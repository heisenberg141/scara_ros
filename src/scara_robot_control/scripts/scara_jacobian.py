import rospy
import numpy as np
from math import sin
from dh_params import*

def find_jacobian(DH_params):
    print("Calculating Jacobian...")
    T, A_mats=DH_params   
    z_0_0=[0,0,1]
    
    z_1_0=[0,0,1]
    
    z_2_0=[0,0,-1]
    
    o_3_0=T[0:3,3]
    
    o_1_0=A_mats[0][0:3,3]
    
    o_0_0=[0,0,0]
    J1=np.concatenate((np.cross(z_0_0, o_3_0 - o_0_0),z_0_0))
    J2=np.concatenate((np.cross(z_1_0, o_3_0 - o_1_0),z_1_0))
    J3=np.concatenate((z_2_0,[0,0,0]))
    J=np.vstack((J1,J2,J3)).T
    return J
    





    
    





