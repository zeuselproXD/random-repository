import numpy as np
import matplotlib.pyplot as plt
x=(1, 1.2, 1.4, 1.6, 1.8)
y=(2, 2.3, 2.6, 2.4, 2.1)
u=[]
v=[]
w=[]
n=len(x)
t=y[1]
w=y
for i in range(1,n+1):
    u.append(t)
    for j in range(n-i):
        v.append(w[j+1]-w[j])
    t=v[1]
    w=v
m=np.arange(0.8,2.0,0.01)
Y=[]
for g in range(len(m)):
    h=x[2]-x[1]
    x0=m[g]
    t=(x0-1)/h
    su=u[1]
    p1=1
    t1=1
    for i in range(1,n):
        t1=t1*(t-(i-2))
        su=su+u[i]*t1/p1
        p1=p1*i
    Y.append(su)
plt.plot(x, y, 'ro')
plt.plot(m, Y, 'b-')
plt.show()
