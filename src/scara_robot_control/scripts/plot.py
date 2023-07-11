import csv 
from matplotlib import pyplot as plt
import numpy as np

file= "sys_velocity_response.csv"
positions=list()
with open(file) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            line_count += 1
        else:
            positions.append(list(map(float,row)))
            line_count += 1
    
    
positions=np.array(positions)
q1=positions[:,0]
q1_ref=positions[:,1]
q2=positions[:,2]
q2_ref=positions[:,3]
x=np.linspace(0, len(q1),len(q1))
# print(x)
# print(q1)
plt.figure(1)
plt.subplot(211)
plt.plot(q1, label="velocity value")
plt.plot(q1_ref, label="velocity reference")
plt.xlabel("iterations",fontsize="15")
plt.ylabel("velocity1 value",fontsize="15")
plt.legend(loc="lower right",fontsize=12)
plt.subplot(212)
plt.plot(q2,label="velocity_value")
plt.plot(q2_ref,label="velocity_reference")
plt.xlabel("iterations",fontsize="15")
plt.ylabel("velocity1 value",fontsize="15")
plt.legend(loc="lower right",fontsize=12)


plt.show()
