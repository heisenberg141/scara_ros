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


def callback(joint_state,args):
    q1_publisher = args[1]
    q2_publisher = args[2]

    q1=joint_state.position[0]
    q2=joint_state.position[1]
    
    q1_ref=0
    q2_ref=0

    if time.time() - args[0]>5:
        q1_ref=0
        q2_ref=1.507
    q1_publisher.publish(q1_ref)
    q2_publisher.publish(q2_ref)

    
    

if __name__ == "__main__":
    rospy.sleep(7)
    q1_publisher = rospy.Publisher('/scara_robot/joint1_position_controller/command', Float64, queue_size=10)
    q2_publisher = rospy.Publisher('/scara_robot/joint2_position_controller/command', Float64, queue_size=10)
    rospy.init_node('data_collection')
    start_time=time.time()
    sub=rospy.Subscriber('/scara_robot/joint_states', JointState, callback,(start_time, q1_publisher, q2_publisher ))
    rospy.spin()    
