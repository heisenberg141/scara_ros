import numpy as np
from math import sin, cos
 
def calculate_dh(table):
    '''
        THE TABLE SHOULD BE PROVIDED INT THE FOLLOWING FORMAT:
            A   D   THETA    ALPHA

        L1  a1  d1  theta1   alpha1
        L2
        L3
        .
        .
        .
    '''
    print("Calculating DH parameters")
    T= np.identity(4)
    matrices=list()

    for row in reversed(table):
        a,d,theta,alpha= row

        A=np.matrix([
            [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a* cos(theta)],
            [sin(theta), cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a* cos(theta)],
            [0, sin(alpha), cos(alpha), d],
            [0, 0, 0, 1]
           ])
        matrices.append(A)
        T= np.matmul(A,T)

    return np.array(T),np.array(matrices)


