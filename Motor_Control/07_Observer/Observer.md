```python
import sympy
import numpy as np
import control
import matplotlib.pyplot as plt
sympy.init_printing()
x = sympy.Symbol('x')
y, z0 = sympy.symbols(('y', 'z_0'))
a = x + y
b = y * z0
print("a={}. b={}.".format(a, b))
f = sympy.Function('f')
c = sympy.sin(x)**2 + sympy.cos(x)**2
d = sympy.cosh(x)**2 - sympy.sinh(x)**2
d.simplify()
a, b, c, x = sympy.symbols(('a', 'b', 'c', 'x'))
quadratic_equation = sympy.Eq(a*x**2+b*x+c, 0)
# sympy.solve(quadratic_equation)

sympy.solve(quadratic_equation, x)
roots = sympy.solve(quadratic_equation, x)
xplus, xminus = sympy.symbols(('x_{+}', 'x_{-}'))
xplus = roots[0]
xminus = roots[1]
xplus_solution = xplus.subs([(a,1), (b,2), (c,3)])
xplus_solution
```

    a=x + y. b=y*z_0.
    




$\displaystyle -1 - \sqrt{2} i$




```python
import control
import numpy as np
import matplotlib.pyplot as plt
s = control.tf('s')
Kp=1
Ki=2
Kd=0
Karray = [1, 2, 3, 4]
G  = (s + 1)/(s**2 + 2*s + 1)
G_Open  = Kp+Ki/s+Kd*s
G_Close = control.feedback(G_Open, 1, sign=-1)
print ('G_Open(s) =', G_Open)
print ('G_Close(s) =', G_Close)
# print (prety(G_Close))
#Step Response
t, y = control.step_response(G_Close)
plt.plot(t,y)
plt.title("Step Response")
plt.grid()
plt.show()

# for Kp in Karray:
#     for Ki in Karray:
#         #Create Transfer Function
#         G_Open = Kp+Ki/s+Kd*s
#         # G_Open  = Kp+Ki/s+Kd*s
#         G_Close = control.feedback(G_Open, -1)
#         # print ('G_Open(s) =', G_Open)
#         # print ('G_Close(s) =', G_Close)
#         print ('G_Close =', G_Close)
#         # Step Response
#         # t, y = control.step_response(G_Close)
#         # Plot
#         plt.plot(t, y)

mag, phase, omega = control.bode(G_Close)
# plt.plot(t,y)
plt.title("Step Response")
plt.grid()
plt.show()

```

    G_Open(s) = 
    s + 2
    -----
      s
    
    G_Close(s) = 
     s + 2
    -------
    2 s + 2
    
    


    
![png](output_1_1.png)
    



    
![png](output_1_2.png)
    



```python
import control
import numpy as np
import matplotlib.pyplot as plt
s = control.tf('s')
Kp=1
Ki=2
Kd=0
Karray = [1, 2, 3, 4]
Karray =np.linspace(1,5,5)
# G  = (s + 1)/(s**2 + 2*s + 1)
# G_Open  = Kp+Ki/s+Kd*s
# G_Close = control.feedback(G_Open, 1, sign=-1)
# print ('G_Open(s) =', G_Open)
# print ('G_Close(s) =', G_Close)
# print (prety(G_Close))
# Step Response
# t, y = control.step_response(G_Close)
# plt.plot(t,y)
# plt.title("Step Response")
# plt.grid()
# plt.show()

for Kp in Karray:
    for Ki in Karray:
        #Create Transfer Function
        G_Open = Kp+Ki/s+Kd*s
        # G_Open  = Kp+Ki/s+Kd*s
        G_Close = control.feedback(G_Open,1,-1)
        num,den=control.tfdata(G_Close)
        # print ('G_Open(s) =', G_Open)
        # print ('G_Close(s) =', G_Close)
        # print ('G_Open(s) =', G_Open)
        # print ('G_Close =', G_Close)
        # print ('num =', num)
        # print ('den =', den)
        # Step Response
        t, y = control.step_response(G_Close)
        # Plot
        plt.plot(t, y,label= 'Kp= '+str(Kp)+' Ki= '+str(Ki)+' Kd= '+str(Kd))
        # plt.text(Kp, Ki,'%f %f', fontsize=12)
        # ax.label(Kp, fmt='%.2f')
        # plt.label(Kp, Kp='%.2f')
        # plt.legend(label="Kp =",Kp,"Ki=",Ki,loc='center left')
        plt.legend(loc='center right')
plt.grid()
plt.show()
        

# mag, phase, omega = control.bode(G_Close)
# plt.plot(t,y)
# plt.title("Step Response")
# plt.grid()
# plt.show()

```


    
![png](output_2_0.png)
    



```python
import control
import numpy as np
import matplotlib.pyplot as plt
s = control.tf('s')
Kp=1
Ki=1
Kd=2
# Karray = [1, 2, 3, 4]
Karray =np.linspace(1,5,5)
for Kp in Karray:
    # for Ki in Karray:
        #Create Transfer Function
        G_Open = Kp+Ki/s+Kd*s
        G_Close = control.feedback(G_Open,1,-1)
        # print ('Kp =', Kp)
        # print ('Ki =', Ki)
        # print ('G_Open(s) =', G_Open)
        # print ('G_Close =', G_Close)
        # print (str(G_Close))
        # Step Response
        # t, y = control.step_response(G_Close)
        mag, phase, omega = control.bode(G_Close)
        # control.bode_plot(G_Close,label= 'Kp= '+str(Kp)+' Ki= '+str(Ki))
        control.bode_plot(G_Close,label='Tf= '+str(G_Close))
        # plt.legend(loc='center right')
        plt.legend()
plt.grid()
plt.show()

```


    
![png](output_3_0.png)
    



```python
import control
import numpy as np
import matplotlib.pyplot as plt
s = control.tf('s')
# Kp=1
# Ki=2
Kd=0
Karray =np.linspace(1,10,4)
# G  = (s + 1)/(s**2 + 2*s + 1)
# G_Open  = Kp+Ki/s+Kd*s
# G_Close = control.feedback(G_Open, 1, sign=-1)
# print ('G_Open(s) =', G_Open)
# print ('G_Close(s) =', G_Close)
# print (prety(G_Close))
# Step Response
# t, y = control.step_response(G_Close)
# plt.plot(t,y)
# plt.title("Step Response")
# plt.grid()
# plt.show()

for Kp in Karray:
    # for Ki in Karray:
        #Create Transfer Function
        G_Open = Kp+Ki/s+Kd*s
        # G_Open  = Kp+Ki/s+Kd*s
        G_Close = control.feedback(G_Open,1,-1)
        num,den=control.tfdata(G_Close)
        # print ('G_Open(s) =', G_Open)
        # print ('G_Close(s) =', G_Close)
        # print ('G_Open(s) =', G_Open)
        # print ('G_Close =', G_Close)
        # print ('num =', num)
        # print ('den =', den)
        # Step Response
        t, y = control.step_response(G_Close)
        # Plot
        plt.plot(t, y,label= 'Kp= '+str(Kp)+' Ki= '+str(Ki)+' Kd= '+str(Kd))
        # plt.text(Kp, Ki,'%f %f', fontsize=12)
        # ax.label(Kp, fmt='%.2f')
        # plt.label(Kp, Kp='%.2f')
        # plt.legend(label="Kp =",Kp,"Ki=",Ki,loc='center left')
        plt.legend(loc='center right')
plt.grid()
plt.show()
        

# mag, phase, omega = control.bode(G_Close)
# plt.plot(t,y)
# plt.title("Step Response")
# plt.grid()
# plt.show()

```


    
![png](output_4_0.png)
    

