#!/usr/bin/env python3
from __future__ import print_function
import sys
import rospy

from scara_robot_control.srv import find_j_vels, find_end_vel
from dh_params import*
from scara_jacobian import *


def calc_joint_velocity(r):
    global J
    end_vel=[r.vx,r.vy,r.vz,r.wx,r.wy,r.wz]
    print('calculating Joint Velocities')
    J_inv= np.linalg.pinv(J)
    joint_vels=np.matmul(J_inv, end_vel)
    v1,v2,v3= joint_vels
    return v1,v2,v3


    
def calc_end_effector_velocity(request):
    global J
    print('calculating End Effector Velocity') 
    
    joint_vels=[request.q1_dot, request.q2_dot, request.q3_dot]
    end_effector_vel=np.matmul(J,joint_vels)
    vx,vy,vz,wx,wy,wz=end_effector_vel
    
    return vx,vy,vz,wx,wy,wz

def main():
    rospy.init_node('vel_kinematics')
    
    end_vel_ser = rospy.Service('calc_end_vel', find_end_vel, calc_end_effector_velocity)
    joint_vel_ser = rospy.Service('calc_joint_vel', find_j_vels, calc_joint_velocity)
    rospy.spin()

q1=0
q2=0
q3=0
dh_table=[[0.5,0.3,q1,0],
          [0.5,0,q2,3.14],
          [0,q3,0,0]] 

J = find_jacobian(calculate_dh(dh_table))

if __name__ == "__main__":
    main()
    