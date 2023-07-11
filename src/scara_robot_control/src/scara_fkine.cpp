#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include <sstream>
#include <iostream>
#include <string>
#include <cmath>
#include "geometry_msgs/Pose.h"
#include <Eigen/Core>
#include <Eigen/Dense>

using namespace std;

class Robot{
    private:
    string name;
    map < string, tuple< string, vector<float> > > DH_table;
    public:
    
    Robot(string name){
        this->name = name;
        this->DH_table = InitDHTable(name);        
    }
    
    map < string, tuple< string, vector<float> > > InitDHTable(string name){
        map < string, tuple< string, vector<float> > > DH_Table;
        
        if(name =="scara"){
            float l1 = 0.45;
            float l2 = 0.2;
            float l3 = 0.1; 
            float l4 = 0.35;
            float l5 = 0.15;
            // a, alpha, d, theta
            DH_Table = {{"link1",make_tuple("Revolute",vector<float> {l2, 0, l1, 0})},
                        {"link2",make_tuple("Revolute",vector<float> {l4, M_PI, l3, 0})},
                        {"link3",make_tuple("Prismatic",vector<float> {0, 0, l5, 0})}
                        };
        }

        else if(name == "stanford"){
            
            float l = 1;
            
            DH_Table = {{"link1", make_tuple("Revolute", vector<float>{0, M_PI_2, l, 0})},
                        {"link2", make_tuple("Revolute", vector<float>{0, M_PI_2, 0, M_PI_2})},
                        {"link3", make_tuple("Prismatic", vector<float>{0, 0, 2*l, 0})},
                        {"link4", make_tuple("Revolute", vector<float>{0, M_PI_2, l, M_PI_2})},
                        {"link5", make_tuple("Revolute", vector<float>{0, M_PI_2, 0, -M_PI})},
                        {"link6", make_tuple("Revolute", vector<float>{0, 0, 2*l, M_PI})}
                        };
        }

        return DH_Table;
    }

    Eigen::Matrix4f ForwardKine(vector<double> joint_values){
        using namespace Eigen;
        
        auto DH_table = this->DH_table;
        Matrix4f T = Matrix4f::Identity();
        
        int index = 0;
        for (const auto& pair : DH_table){
            auto dh_row = std::get<1>(pair.second);
            
            float a = dh_row[0];
            float alpha = dh_row[1];
            float d = dh_row[2];
            float theta = dh_row[3];
            
            if(std::get<0>(pair.second)=="Revolute"){
                theta+=joint_values[index];
            }
            
            else{
                d+=joint_values[index];
            }
            
            Matrix4f A = ConstructA(a,alpha,d,theta);
            T*=A;
            // cout<<"A"<<index+1<<": "<<A<<endl;
            // cout<<a<<" "<<alpha<<" "<<d<<" "<<theta<<endl;
            index++;
        }
        // cout<<endl;
        return T;
    }

    Eigen::Matrix4f ConstructA(float a, float alpha, float d, float theta){
        Eigen::Matrix4f transformationMatrix;

        double cosTheta = std::cos(theta);
        double sinTheta = std::sin(theta);
        double cosAlpha = std::cos(alpha);
        double sinAlpha = std::sin(alpha);

        transformationMatrix << cosTheta, -sinTheta * cosAlpha, sinTheta * sinAlpha, a * cosTheta,
                                sinTheta, cosTheta * cosAlpha, -cosTheta * sinAlpha, a * sinTheta,
                                0, sinAlpha, cosAlpha, d,
                                0, 0, 0, 1;

        return transformationMatrix;
    }

    auto get_DH_table(void){
        return DH_table;
    }

    void display_DH_table(void){
        auto DH_table = this->DH_table;
        cout<<"DH Table Format:\ta\talpha\td\ttheta"<<endl<<endl;
        for (const auto& pair : DH_table) {
            cout << pair.first << "(" << get<0>(pair.second) <<")"<< ":\t";
            
            for (auto num : get<1>(pair.second)) {
                std::cout << num << "\t";
        }
        std::cout << endl;
    }
    cout<<endl; 

    }
};

geometry_msgs::Pose TransToPose(Eigen::Matrix4f T);
void fkine_callback(const sensor_msgs::JointState::ConstPtr& joint_states);


ros::Publisher pose_pub;
int main(int argc, char **argv)
{
    //   initialize the node
    ros::init(argc, argv, "ForwardKinematics");
    ros::NodeHandle fkine;
 
    ros::Subscriber sub = fkine.subscribe("/scara_robot/joint_states", 10, fkine_callback);
    pose_pub = fkine.advertise<geometry_msgs::Pose>("/end_effector_pose", 10);
    ros::spin();

    return 0;
}

void fkine_callback(const sensor_msgs::JointState::ConstPtr& joint_states){
    Robot scara = Robot("scara");
    // cout<<"success"<<endl;
    auto DH_table = scara.get_DH_table();
    // scara.display_DH_table();
    vector<double> joint_values = joint_states->position;
    // cout<< "Joint Values: " ;
    // for(auto j:joint_values){
    //     cout<<j<<" ";
    // }
    // cout<<endl<<endl;

    auto T = scara.ForwardKine(joint_values);
    // cout<<"T: "<<T<<endl<<endl;
    geometry_msgs::Pose end_eff_pose;
    end_eff_pose = TransToPose(T);
    pose_pub.publish(end_eff_pose);
    // cout<<end_eff_pose<<endl;
}

geometry_msgs::Pose TransToPose(Eigen::Matrix4f T){
    geometry_msgs::Pose pose;
    pose.position.x = T(0, 3);
    pose.position.y = T(1, 3);
    pose.position.z = T(2, 3);
    
    Eigen::Matrix3f rotationMatrix = T.block<3, 3>(0, 0);
    Eigen::Quaternionf quaternion(rotationMatrix);
    pose.orientation.x = quaternion.x();
    pose.orientation.y = quaternion.y();
    pose.orientation.z = quaternion.z();
    pose.orientation.w = quaternion.w();

    return pose;
}



