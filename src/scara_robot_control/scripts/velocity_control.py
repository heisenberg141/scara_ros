#!/usr/bin/env python3

from __future__ import print_function
import sys
import rospy
import numpy as np
from geometry_msgs.msg import  Vector3
from sensor_msgs.msg import JointState
import csv
import time
from std_msgs.msg import Float64
from dh_params import*
from scara_jacobian import *


def callback(joint_state,args):
    v1_publisher=args[1]
    v2_publisher=args[2]
    v1_ref=0
    v2_ref=0   
    v1=joint_state.velocity[0]
    v2=joint_state.velocity[1]
    
    if time.time()-args[0]>5:
        v1_ref = args[3]
        v2_ref = args[4]
        
    v1_publisher.publish(v1_ref)
    v2_publisher.publish(v2_ref)
    
          
if __name__ == "__main__":
    rospy.sleep(5)

    q1=2*3.14/3
    q2=-2*3.14/3
    q3=0
    dh_table=[[0.5,0.3,q1,0],
                [0.5,0,q2,3.14],
                [0,q3,0,0]] 
    J = find_jacobian(calculate_dh(dh_table))
    J_inv= np.linalg.pinv(J)
    end_vel=[0,-0.5,0,0,0,0]
    joint_vels=np.matmul(J_inv, end_vel)
    v1_ref = joint_vels[0]
    v2_ref = joint_vels[1]

    rospy.init_node('vel_kinematics')
    v1_publisher =rospy.Publisher('/scara_robot/joint1_velocity_controller/command', Float64, queue_size=10)
    v2_publisher = rospy.Publisher('/scara_robot/joint2_velocity_controller/command', Float64, queue_size=10)
    
    start_time=time.time()
    sub=rospy.Subscriber('/scara_robot/joint_states', JointState, callback,
                        (start_time,v1_publisher,v2_publisher,v1_ref,v2_ref))
    rospy.spin()    
