# SVPWM

$
U_{a}=U_{m}\cos (\omega t)
$

$
U_{b}=U_{m}\cos (\omega t-\frac{2\pi }{3} )
$

$
U_{c}=U_{m}\cos (\omega t+\frac{2\pi }{3} )
$

$
U_{\delta }=U_{a}+U_{b}e^{j\frac{2\pi }{3} } +U_{c}e^{-j\frac{2\pi }{3} } 
           =\frac{3}{2} U_{m}e^{j\omega t}
$

$
\frac{\mathrm{d} \lambda_{\alpha }}{\mathrm{d} t}=L*I_{\alpha }+\Phi_{m} *\cos(\omega_{e}t ) \\
$

$
\frac{di_{\alpha}}{dt}=-\frac{R}{L}*i_{\alpha}-\frac{1}{L}*e_{\alpha }+\frac{1}{L}V_{\alpha} \\
$\
$
\frac{di_{\beta}}{dt}=-\frac{R}{L}*i_{\beta}-\frac{1}{L}*e_{\beta }+\frac{1}{L}V_{\beta} \\
$\
$
U_{\alpha}T_{s}=\frac{2}{3}*U_{dc}(T_{4}+\frac{1}{2}T_{6}) \\
U_{\beta}T_{s}=\frac{2}{3}*U_{dc}(\frac{\sqrt3}{2}T_{6})
$\
$
T_{4}=\frac{2}{3}\frac{\sqrt3}U_{\alpha}T_{s}=\frac{2}{3}*U_{dc}(+\frac{1}{2}T_{6}) \\
U_{\beta}T_{s}=\frac{2}{3}*U_{dc}(\frac{\sqrt3}{2}T_{6})
$\

$
\left\{\begin{array}{l}
u_{\alpha}=\frac{T_{4}}{T_{s}}\left|\boldsymbol{U}_{4}\right|+\frac{T_{6}}{T_{s}}\left|\boldsymbol{U}_{6}\right| \cos \frac{\pi}{3} \\
u_{\beta}=\frac{T_{6}}{T_{s}}\left|U_{6}\right| \sin \frac{\pi}{3}
\end{array}\right.
$\
$
\left\{\begin{array}{l}
T_{4}=\frac{\sqrt{3} T_{\mathrm{s}}}{2 U_{\mathrm{dc}}}\left(\sqrt{3} u_{\alpha}-u_{\beta}\right) \\
T_{6}=\frac{\sqrt{3} T_{\mathrm{s}}}{2 U_{\mathrm{dc}}} u_{\beta}
\end{array}\right.
$\
$
\left\{\begin{array}{l}
X=\frac{\sqrt{3} T_{\mathrm{s}} u_{\beta}}{U_{\mathrm{dc}}} \\
Y=\frac{\sqrt{3} T_{\mathrm{s}}}{U_{\mathrm{dc}}}\left(\frac{\sqrt{3}}{2} u_{\alpha}+\frac{1}{2} u_{\beta}\right) \\
Z=\frac{\sqrt{3} T_{\mathrm{s}}}{U_{\mathrm{dc}}}\left(-\frac{\sqrt{3}}{2} u_{\alpha}+\frac{1}{2} u_{\beta}\right)
\end{array}\right.
$


|   N     |  0  |  1  |  2  |  3  |  4  |  5 |
|   ---   | --- | --- | --- | --- | --- | ---|
| $T_{4}$ |  Z  |  Y  |  -Z |  -X | -X  | -Y |
| $T_{6}$ |  Y  |  -X |  X  |  Z  | -Y  | -Z |
| $T_{6}$ | $T_{0}=(T_{s}-T_{4}-T_{6})/2$  ||||||

| Sector |  1  |  2  |  3  |  4  |  5  |  6 |
|   ---  | --- | --- | --- | --- | --- | ---|
|    N   |  3  |  1  |  5  |  4  |  6  |  2 |

Sector =1 \
4---->6 \
$
U_{\alpha}=\frac{T_4}{T_s}\left| U_4 \right|+\frac{T_6}{T_s}\left| U_6 \right|\cos \frac{\pi}{3}=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_6}{T_s}\left| U_6 \right|\sin \frac{\pi}{3}=U_s\sin \theta 
$\
$
T_6=\frac{T_sU_{\beta}}{\left| U_6 \right|\sin \frac{\pi}{3}}=\sqrt{\frac{T_sU_{\beta}}{\frac{2}{3}U_{dc}\frac{\sqrt{3}}{2}}}=\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
U_{\alpha}=\frac{T_4}{T_s}\left| U_4 \right|+\frac{T_6}{T_s}\left| U_6 \right|\cos \frac{\pi}{3}=\frac{T_4}{T_s}\left| U_4 \right|+\frac{U_{\beta}}{\sin \frac{\pi}{3}}\cos \frac{\pi}{3}=\frac{T_4}{T_s}\left| U_4 \right|+\frac{U_{\beta}}{\frac{\sqrt{3}}{2}}\frac{1}{2}=\frac{T_4}{T_s}\left| U_4 \right|+U_{\beta}\frac{1}{\sqrt{3}}
$\
$
U_{\alpha}=\frac{T_4}{T_s}\left| U_4 \right|+U_{\beta}\frac{1}{\sqrt{3}}
$\
$
U_{\alpha}-U_{\beta}\frac{1}{\sqrt{3}}=\frac{T_4}{T_s}\left| U_4 \right|=\frac{T_4}{T_s}\frac{2}{3}U_{dc}
$\
$
\left( U_{\alpha}-U_{\beta}\frac{1}{\sqrt{3}} \right) T_s\frac{3}{2U_{dc}}=T_4
$\
$
T_4=\left( U_{\alpha}-U_{\beta}\frac{1}{\sqrt{3}} \right) T_s\frac{3}{2U_{dc}}=\left( \sqrt{3}U_{\alpha}-U_{\beta} \right) \frac{\sqrt{3}T_s}{2U_{dc}}=-\frac{\sqrt{3}T_s}{U_{dc}}\left(- \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$


Sector = 2 \
6--->2 \
$
U_{\alpha}=\frac{T_6}{T_s}\left| U_6 \right|\cos \frac{\pi}{3}-\frac{T_2}{T_s}\left| U_2 \right|\cos \frac{\pi}{3}=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_6}{T_s}\left| U_6 \right|\sin \frac{\pi}{3}+\frac{T_2}{T_s}\left| U_2 \right|\sin \frac{\pi}{3}=U_s\sin \theta 
$\
$
U_{\alpha}=\frac{T_6}{T_s}\left| U_6 \right|\frac{1}{2}-\frac{T_2}{T_s}\left| U_2 \right|\frac{1}{2}=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_6}{T_s}\left| U_6 \right|\frac{\sqrt{3}}{2}+\frac{T_2}{T_s}\left| U_2 \right|\frac{\sqrt{3}}{2}=U_s\sin \theta 
$\
$
\sqrt{3}U_{\alpha}+U_{\beta}=\sqrt{3}\frac{T_6}{T_s}\left| U_6 \right|=\sqrt{3}\frac{T_6}{T_s}\frac{2}{3}U_{dc}=\frac{2}{\sqrt{3}}\frac{T_6}{T_s}U_{dc}
$\
$
T_6=\frac{\sqrt{3}T_s}{U_{dc}}\left( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$\
$
U_{\beta}-\sqrt{3}U_{\alpha}=\sqrt{3}\frac{T_2}{T_s}\left| U_2 \right|=\sqrt{3}\frac{T_2}{T_s}\frac{2}{3}U_{dc}=\frac{2}{\sqrt{3}}\frac{T_2}{T_s}U_{dc}
$\
$
T_2=\frac{\sqrt{3}T_s}{2U_{dc}}\left( U_{\beta}-\sqrt{3}U_{\alpha} \right) =\frac{\sqrt{3}T_s}{U_{dc}}\left( -\frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$


Sector = 3 \
2--->3 \
$
U_{\alpha}=-\frac{T_2}{T_s}\left| U_2 \right|\cos \frac{\pi}{3}-\frac{T_3}{T_s}\left| U_3 \right|=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_2}{T_s}\left| U_2 \right|\sin \frac{\pi}{3}=U_s\sin \theta 
$\
$
U_{\alpha}=-\frac{T_2}{T_s}\left| U_2 \right|\frac{1}{2}-\frac{T_3}{T_s}\left| U_3 \right|=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_2}{T_s}\left| U_2 \right|\frac{\sqrt{3}}{2}=U_s\sin \theta 
$\
$
U_{\beta}=\frac{T_2}{T_s}\left| U_2 \right|\frac{\sqrt{3}}{2}=\frac{T_2}{T_s}\frac{2}{3}U_{dc}\frac{\sqrt{3}}{2}
$\
$
T_2=\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
-\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =\frac{T_3}{T_s}\left| U_3 \right|=\frac{T_3}{T_s}\frac{2}{3}U_{dc}
$\
$
T_3=-\frac{3T_s}{2U_{dc}}\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =-\frac{\sqrt{3}T_s}{U_{dc}}\left( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$


Sector=4 \
3--->1 \
$
U_{\alpha}=-\frac{T_1}{T_s}\left| U_1 \right|\cos \frac{\pi}{3}-\frac{T_3}{T_s}\left| U_3 \right|=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_1}{T_s}\left| U_1 \right|\sin \frac{\pi}{3}=U_s\sin \theta 
$\
$
U_{\alpha}=-\frac{T_1}{T_s}\left| U_1 \right|\frac{1}{2}-\frac{T_3}{T_s}\left| U_3 \right|=U_s\cos \theta 
$\
$
U_{\beta}=\frac{T_1}{T_s}\left| U_1 \right|\frac{\sqrt{3}}{2}=U_s\sin \theta 
$\
$
U_{\beta}=\frac{T_1}{T_s}\left| U_1 \right|\frac{\sqrt{3}}{2}=\frac{T_1}{T_s}\frac{2}{3}U_{dc}\frac{\sqrt{3}}{2}=\frac{T_1}{T_s}\frac{1}{\sqrt{3}}U_{dc}
$\
$
T_1=\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
-\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =\frac{T_3}{T_s}\left| U_3 \right|=\frac{T_3}{T_s}\frac{2}{3}U_{dc}
$\
$
T_3=-\frac{3T_s}{2U_{dc}}\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =-\frac{\sqrt{3}T_s}{U_{dc}}\left( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$


Sector=5 \
1--->5 \
$
U_{\alpha}=-\frac{T_1}{T_s}\left| U_1 \right|\cos \frac{\pi}{3}+\frac{T_5}{T_s}\left| U_5 \right|\cos \frac{\pi}{3}=U_s\cos \theta 
$\
$
U_{\beta}=-\frac{T_1}{T_s}\left| U_1 \right|\sin \frac{\pi}{3}-\frac{T_5}{T_s}\left| U_5 \right|\cos \frac{\pi}{3}=U_s\sin \theta 
$\
$
U_{\alpha}=-\frac{T_1}{T_s}\left| U_1 \right|\frac{1}{2}+\frac{T_5}{T_s}\left| U_5 \right|\frac{1}{2}=U_s\cos \theta 
$\
$
U_{\beta}=-\frac{T_1}{T_s}\left| U_1 \right|\frac{\sqrt{3}}{2}-\frac{T_5}{T_s}\left| U_5 \right|\frac{\sqrt{3}}{2}=U_s\sin \theta 
$\
$
-\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =\frac{T_1}{T_s}\left| U_1 \right|=\frac{T_1}{T_s}\frac{2}{3}U_{dc}
$\
$
T_1=-\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) \frac{3T_s}{2U_{dc}}=-\frac{\sqrt{3}T_s}{U_{dc}}\left( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$\
$
-\left( U_{\alpha}-\frac{1}{\sqrt{3}}U_{\beta} \right) =\frac{T_5}{T_s}\left| U_5 \right|=\frac{T_5}{T_s}\frac{2}{3}U_{dc}
$\
$
T_5=-\left( U_{\alpha}-\frac{1}{\sqrt{3}}U_{\beta} \right) \frac{3T_s}{2U_{dc}}=\frac{\sqrt{3}T_s}{U_{dc}}\left( -\frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$

Sector=6 \
5--->4 \
$
U_{\alpha}=\frac{T_5}{T_s}\left| U_5 \right|\cos \frac{\pi}{3}+\frac{T_4}{T_s}\left| U_4 \right|=U_s\cos \theta 
$\
$
U_{\beta}=-\frac{T_5}{T_s}\left| U_5 \right|\sin \frac{\pi}{3}=U_s\sin \theta 
$\
$
U_{\alpha}=\frac{T_5}{T_s}\left| U_5 \right|\frac{1}{2}+\frac{T_4}{T_s}\left| U_4 \right|=U_s\cos \theta 
$\
$
U_{\beta}=-\frac{T_5}{T_s}\left| U_5 \right|\frac{\sqrt{3}}{2}=U_s\sin \theta 
$\
$
U_{\beta}=-\frac{T_5}{T_s}\left| U_5 \right|\frac{\sqrt{3}}{2}=-\frac{T_5}{T_s}\frac{\sqrt{3}}{2}\frac{2}{3}U_{dc}=-\frac{T_5}{\sqrt{3}T_s}U_{dc}
$\
$
T_5=-\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) =\frac{T_4}{T_s}\left| U_4 \right|=\frac{T_4}{T_s}\frac{2}{3}U_{dc}=\frac{2T_4}{3T_s}U_{dc}
$\
$
\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) \frac{3T_s}{2U_{dc}}=T_4
$\
$
T_4=\left( U_{\alpha}+\frac{1}{\sqrt{3}}U_{\beta} \right) \frac{3T_s}{2U_{dc}}=\frac{\sqrt{3}T_s}{U_{dc}}\left( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta} \right) 
$



$
x=\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
y=\frac{\sqrt{3}T_s}{U_{dc}}( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta})
$\
$
z=\frac{\sqrt{3}T_s}{U_{dc}}( -\frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta})
$

| Sector    |  1  |  2  |  3  |  4  |  5  |  6 |
|   ---     | --- | --- | --- | --- | --- | ---|
|    N      |  3  |  1  |  5  |  4  |  6  |  2 |
|  Sequency | 4->6| 6->2| 2->3| 3->1| 1->5|5->4|
|  T_1st    |  -z |  y  |  x  |   z |  -y | -x |
|  T_2nd    |  x  |  z  |  -y |  -x |  -z |  y |
|   T_0     |  3  |  1  |  5  |  4  |  6  |  2 |

2 4 5 6 not correct

| Sector    |N  |  Sequency                 |
|   ---     |---| ---                       |
|    1      |3  |  0->4->6->7->7->6->4->0   |
|    2      |1  |  0->2->6->7->7->6->2->0   |
|    3      |5  |  0->2->3->7->7->3->2->0   |
|    4      |4  |  0->1->3->7->7->3->1->0   |
|    5      |6  |  0->1->5->7->7->5->1->0   |
|    6      |2  |  0->4->5->7->7->5->4->0   |

2 4 5 6 not correct

$
T_{x}=\frac{T_{x}}{{T_{x}+T_{y}}}T_{s}
$\
$
T_{y}=\frac{T_{y}}{{T_{x}+T_{y}}}T_{s}
$\
$
T_{0}=T_{7}=0
$\
$
T_{aon}=\frac{T_{s}-T_{x}-T_{y}}{4}
$\
$
T_{bon}=T_{aon}+\frac{T_{x}}{2}
$\
$
T_{con}=T_{bon}+\frac{T_{y}}{2}
$

| Sector    |  1        |  2        |  3        |  4        |  5        |  6        |
|   ---     | ---       | ---       | ---       | ---       | ---       | ---       |
|    N      |  3        |  1        |  5        |  4        |  6        |  2        |
|  $T_{a}$  | $T_{bon}$ | $T_{aon}$ | $T_{aon}$ | $T_{con}$ | $T_{con}$ | $T_{bon}$ |
|  $T_{b}$  | $T_{aon}$ | $T_{con}$ | $T_{bon}$ | $T_{bon}$ | $T_{aon}$ | $T_{con}$ |
|  $T_{c}$  | $T_{con}$ | $T_{bon}$ | $T_{con}$ | $T_{aon}$ | $T_{bon}$ | $T_{aon}$ |


$\begin{aligned}
I_{\gamma(k)}
&=\frac{d_t}{2}\frac{1}{L_{d}}(U_{\gamma}(k)+U_{\gamma}(k-1))\\
&-\frac{d_t}{2}\frac{1}{L_{d}}R_s*(I_{\gamma}(k)+I_{\gamma}(k-1))\\
&+\frac{d_t}{2}\frac{1}{L_{d}}L_q*(\omega_{\gamma\delta}(k)*I_{\delta}(k)+\omega_{\gamma\delta}(k-1)*I_{\delta}(k-1))\\
&+\frac{d_t}{2}\frac{1}{L_{d}}(e_\gamma(k) +e_\gamma(k-1))\\
&+I_{\gamma(k-1)}\\\end{aligned}
$

$U_{AN}=U_m*cos(\theta)$\
$U_{BN}=U_m*cos(\theta-\frac{2\pi}{3})$\
$U_{CN}=U_m*cos(\theta+\frac{2\pi}{3})$\
$U_{out}=U_{AN}*e^{j*0}+U_{BN}*e^{j\frac{2\pi}{3}}+U_{CN}*e^{-j\frac{2\pi}{3}}$\
$U_{out}=\frac{3}{2}U_m*e^{j\theta}$

$cos(-\frac{2\pi}{3})=-\frac{1}{2}$\
$cos(\frac{2\pi}{3})=-\frac{1}{2}$\
$sin(-\frac{2\pi}{3})=-\frac{\sqrt{3}}{2}$\
$sin(\frac{2\pi}{3})=\frac{\sqrt{3}}{2}$

$cos(\theta)*[cos(0)+jsin(0)]\\
=cos(\theta)$

$[cos(\theta)*cos(-\frac{2\pi}{3})-sin(\theta)*sin(-\frac{2\pi}{3})]*[cos(\frac{2\pi}{3})+jsin(\frac{2\pi}{3})]\\
=[cos(\theta)*(-\frac{1}{2})+sin(\theta)*(\frac{\sqrt{3}}{2})]*[(-\frac{1}{2})+j\frac{\sqrt{3}}{2}]\\
=cos(\theta)*(\frac{1}{4})-jcos(\theta)*(\frac{\sqrt{3}}{4})-sin(\theta)*(\frac{\sqrt{3}}{4})+jsin(\theta)*(\frac{3}{4})$

$[cos(\theta)*cos(\frac{2\pi}{3})-sin(\theta)*sin(\frac{2\pi}{3})]*[cos(-\frac{2\pi}{3})+jsin(-\frac{2\pi}{3})]\\
=[cos(\theta)*(-\frac{1}{2})-sin(\theta)*(\frac{\sqrt{3}}{2})]*[(-\frac{1}{2})-j(\frac{\sqrt{3}}{2})]\\
=cos(\theta)(\frac{1}{4})+jcos(\theta)*(\frac{\sqrt{3}}{4})+sin(\theta)(\frac{\sqrt{3}}{4})+jsin(\theta)*(\frac{3}{4})$

$cos(\theta)\\
+cos(\theta)*(\frac{1}{4})-jcos(\theta)*(\frac{\sqrt{3}}{4})-sin(\theta)*(\frac{\sqrt{3}}{4})+jsin(\theta)*(\frac{3}{4})\\
+cos(\theta)(\frac{1}{4})+jcos(\theta)*(\frac{\sqrt{3}}{4})+sin(\theta)(\frac{\sqrt{3}}{4})+jsin(\theta)*(\frac{3}{4})\\
=cos(\theta)*(\frac{3}{2})+jsin(\theta)*(\frac{3}{2})$

$e^{j\omega t}=cos(\omega t)+jsin(\omega t)$\
$\begin{aligned}
U_{out}
&=U_{AN}*e^{j*0}+U_{BN}*e^{j\frac{2\pi}{3}}+U_{CN}*e^{-j\frac{2\pi}{3}}\\
&=U_m*cos(\theta)*e^{j*0}+U_m*cos(\theta-\frac{2\pi}{3})*e^{j\frac{2\pi}{3}}+U_m*cos(\theta+\frac{2\pi}{3})*e^{-j\frac{2\pi}{3}}\\
&=U_m*(cos(\theta)*e^{j*0}+cos(\theta-\frac{2\pi}{3})*e^{j\frac{2\pi}{3}}+cos(\theta+\frac{2\pi}{3})*e^{-j\frac{2\pi}{3}})\\
&=U_m*(cos(\theta)*(\frac{3}{2})+jsin(\theta)*(\frac{3}{2}))\\
&=\frac{3}{2}U_m*(cos(\theta)+jsin(\theta))\\
&=\frac{3}{2}U_m*e^{j*\theta}
\\\end{aligned}
$

$cos(\theta)*[cos(0)+jsin(0)]+[cos(\theta)*cos(-\frac{2\pi}{3})-sin(\theta)*sin(-\frac{2\pi}{3})]*[cos(\frac{2\pi}{3})+jsin(\frac{2\pi}{3})]+[cos(\theta)*cos(\frac{2\pi}{3})-sin(\theta)*sin(\frac{2\pi}{3})]*[cos(-\frac{2\pi}{3})+jsin(-\frac{2\pi}{3})]$


```python
import numpy as np
a=np.cos(-2/3*np.pi)
b=np.sqrt(3)/2
c=2/np.sqrt(3)
print("a=",a)
print("b=",b)
print("c=",c)
```

    a= -0.4999999999999998
    b= 0.8660254037844386
    c= 1.1547005383792517
    

## Harmonics - under study


```python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec

import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
```


```python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
from matplotlib.patheffects import withStroke
from matplotlib.collections import LineCollection

import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first

fig = plt.figure(figsize=(10, 10))

fig.subplots_adjust(left=0.01, right=0.99, top=0.99, bottom=0.01)
ax = fig.add_subplot(projection='polar')
theta_min=0
theta_max=360
r_min=0
r_max=10
ax.set_thetamin(theta_min)
ax.set_thetamax(theta_max)
ax.set_rlim(r_min, r_max)
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.grid(False)
scale = np.zeros((theta_max, 2, 2))
scale[:, 0, 0] = np.linspace(0, 2*np.pi, theta_max)  # 刻度线的角度值
scale[:, 0, 1] = 9.6  # 每度的刻度线起始点r值
scale[::5, 0, 1] = 9.3  # 每5度的刻度线起始点r值
scale[::10, 0, 1] = 2  # 每10度的刻度线起始点r值
scale[::90, 0, 1] = 0  # 90度的刻度线起始点r值
scale[:, 1, 0] = np.linspace(0, 2*np.pi, theta_max)
scale[:, 1, 1] = 10

line_segments = LineCollection(scale, linewidths=[1, 0.5, 0.5, 0.5, 0.5],
                               color='k', linestyle='solid')
ax.add_collection(line_segments)
c = np.linspace(0, 2*np.pi, 500)
ax.plot(c, [7]*c.size, color='k', linewidth=1.5)
ax.plot(c, [2]*c.size, color='k', linewidth=0.5)

ax.plot([0, np.deg2rad(45)], [0, 10],
        color='k', linestyle='--', linewidth=1)
ax.plot([0, np.deg2rad(135)], [0, 10],
        color='k', linestyle='--', linewidth=0.5)

text_kw = dict(rotation_mode='anchor',
               va='top', ha='center', color='red', clip_on=False,
               path_effects=[withStroke(linewidth=5, foreground='white')])

for i in range(0, theta_max, 10):
    theta = np.deg2rad(i)
    if theta in [0,np.pi/3,2*np.pi/3,3*np.pi/3,4*np.pi/3,5*np.pi/3]:
        ax.text(theta, 8.7, i,rotation=i-90, fontsize=18, **text_kw)
        continue
    ax.text(theta, 8.9, i, rotation=i-90, fontsize=12, **text_kw)
    # ax.text(theta, 7.9, 180-i, rotation=i-90, fontsize=12, **text_kw)

plt.show()
```


```python
# import itertools
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
def position(time=0):
    x = np.cos(time)
    y = np.sin(time)
    return {'x' : x, 'y' : y}

sector=[1,5,0,3,2,4]
# fig, (ax_u_l,axm,axr) = plt.subplots(
#     ncols=3,
#     # nrows=2,
#     sharey=True,
#     # figsize=(6, 2),
#     figsize=(10, 5),
#     gridspec_kw=dict(width_ratios=[1,1,2], wspace=0),
# )

####################################
##--------------------------------##
###0------1------2----------------4#
##0|ax_u_l|ax_u_l|    ax_u_r      |#
###--------------------------------#
##1|    ax_d_l   |    ax_d_r      |#
###0------1------2----------------4#
##--------------------------------##
####################################
fig = plt.figure(figsize=(12, 6),constrained_layout=True)
fig.suptitle("SVPWM")
# ,constrained_layout=True
# gs = GridSpec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=0 ,hspace=0.2)
gs = GridSpec(nrows=2,ncols=4, width_ratios=[2,2,2,2], height_ratios=[2, 2], wspace=0 ,hspace=0.12,left=0.05, right=0.95, top=0.95, bottom=0.05)#,top=2,left=1,right=2,bottom=1
# gs = fig.add_gridspec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=None ,hspace=0.05)
ax_u_l = fig.add_subplot(gs[0,0:1])
# ax_u_l.set_aspect(1)

ax_u_l.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
                      ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
plt.xticks(rotation=15)
ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
                    ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])

ax_u_l.set_xlim(-1.5,1.5)
ax_u_l.set_ylim(-1.5,1.5)
# ax_u_l.spines[:].set_visible(False)
plt.grid()
ax_u_m = fig.add_subplot(gs[0,1:2])
ax_u_m.yaxis.set_visible(True)
ax_u_m.axes.yaxis.set_ticklabels([])
plt.grid()

ax_u_r = fig.add_subplot(gs[0,2:4])
# ax_u_r.set_box_aspect(1 / 3)
# ax_u_r.yaxis.set_visible(False)
ax_u_r.xaxis.set_ticks([0, np.pi/3, 2*np.pi/3, np.pi, 4*np.pi/3, 5*np.pi/3, 2*np.pi], 
                       ["0", r"$\pi$/3", r"2*$\pi$/3", r"$\pi$", r"4*$\pi$/3", r"5*$\pi$/3", r"$2\pi$"])
ax_u_r.yaxis.set_visible(True)
ax_u_r.axes.yaxis.set_ticklabels([])
plt.grid()
ax_d_l = fig.add_subplot(gs[1,0:2])
plt.grid()
ax_d_r = fig.add_subplot(gs[1,2:4])
ax_d_r.yaxis.set_visible(True)
ax_d_r.axes.yaxis.set_ticklabels([])
# ax_d_r.yaxis.set_visible(False)
plt.grid()


# Pre Define
U_dc=12 #Voltage
U_m=1#2/3*U_dc


## Set axes x y ratio Axes
# ax_u_l.set_aspect(1)
# ax_u_m.set_box_aspect(1)
# ax_u_r.set_box_aspect(1 / 2)
## Plot left Axes
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
x[1::2] *= 0.5
y = np.sin(theta)
y_1 = np.sin(theta_1)
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
ax_u_l.plot(x[::2], y[::2])#, color='r'
ax_u_l.plot(center[:,0], center[:,1])#, color='r'
ax_u_l.plot(x_1, y_1)#, color='r'
# draw circle with initial point in left Axes
x = np.linspace(0, 2 * np.pi, 50)
ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
# lines, labels = ax.set_thetagrids(range(0, 360, 60), 
#                                 ('0', r'$\frac{2\pi}{3}$',r'$\frac{4\pi}{3}$', '$\pi$', r'$\frac{6\pi}{3}$', r'$\frac{8\pi}{3}$'))
# ax.set_rmax(1)

point_l, = ax_u_l.plot(0, 0, "o")
# plt.quiver(0, 0, 0.5, 1, angles='xy', scale=1.03, scale_units='xy', width=0.005)
line_l              = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_C          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A_2_U_B    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B_2_U_C    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01, color = 'r'))#, color = 'r'

ax_u_l.grid('both')

# plot axm middle
# ax_u_m.yaxis.set_visible(False)
# ax_u_m.axes.xaxis.set_ticklabels([])
# ax_u_m.axes.yaxis.set_ticklabels([])
ax_u_m.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
point_m, = ax_u_m.plot(0, 0, "o")
line_m = ax_u_m.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
ax_u_m.grid('both')


## Plot Right Axes

# draw full curve to set view limits in right Axes
U_A=U_m*np.cos(x)
U_B=U_m*np.cos(x-2/3*np.pi)
U_C=U_m*np.cos(x+2/3*np.pi)
U_SVPWM=np.cos(x)
U_A,= ax_u_r.plot(x, U_A)
U_B,= ax_u_r.plot(x, U_B)
U_C,= ax_u_r.plot(x, U_C)
U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    line_l.set_data([],[],[] ,[])
    line_m.set_data([],[],[] ,[])

    # theObject.set_data([], [])
    # time_text.set_text('')
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    x = frames
    pos = np.cos(x), np.sin(x)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_m*np.cos(x)
    line_l_end_y=U_m*np.sin(x)

    line_l_U_A_start_x=0
    line_l_U_A_start_y=0
    line_l_U_A_end_x=U_m*2/3*np.cos(x)
    line_l_U_A_end_y=0
    
    line_l_U_B_start_x=0
    line_l_U_B_start_y=0
    line_l_U_B_end_x=np.cos(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)#np.abs(np.cos(2/3*np.pi))
    line_l_U_B_end_y=np.sin(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)

    line_l_U_C_start_x=0
    line_l_U_C_start_y=0
    line_l_U_C_end_x=np.cos(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    line_l_U_C_end_y=np.sin(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    
    line_l_U_A_2_U_B_start_x    = line_l_U_A_end_x
    line_l_U_A_2_U_B_start_y    = line_l_U_A_end_y
    line_l_U_A_2_U_B_end_dx     = line_l_U_B_end_x #+ 0.2 #line_l_U_B_end_x#-line_l_U_B_start_x
    line_l_U_A_2_U_B_end_dy     = line_l_U_B_end_y #+ 0.2 #line_l_U_B_end_y#-line_l_U_B_start_y
    line_l_U_B_2_U_C_start_x    = line_l_U_A_2_U_B_start_x+line_l_U_A_2_U_B_end_dx
    line_l_U_B_2_U_C_start_y    = line_l_U_A_2_U_B_start_y+line_l_U_A_2_U_B_end_dy
    line_l_U_B_2_U_C_end_dx     = line_l_U_C_end_x #+ line_l_U_C_end_x#-line_l_U_C_start_x
    line_l_U_B_2_U_C_end_dy     = line_l_U_C_end_y #+ line_l_U_C_end_y#-line_l_U_C_start_y


    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_A      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_C      = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    line_l_U_A_2_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_A_2_U_B_start_x,line_l_U_A_2_U_B_start_y,line_l_U_A_2_U_B_end_dx,line_l_U_A_2_U_B_end_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B_2_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_B_2_U_C_start_x,line_l_U_B_2_U_C_start_y,line_l_U_B_2_U_C_end_dx,line_l_U_B_2_U_C_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_A = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear

    line_m = ax_u_m.add_patch(plt.Arrow(0,0,U_m*np.cos(x),U_m*np.sin(x), width = 0.1))#, color = 'r' # works good except the arror cannot disapear

    # line = ax_u_l.arrow(0,0,np.cos(i),np.sin(i), head_width = 0.05,  
    #      head_length = 0.1) # works good except the arror cannot disapear, width = 0.1, color = 'r'
    U_A.set_data(x, U_m*2/3*np.cos(x))
    # U_A.set_data(x, pos[:,0])
    U_B.set_data(x, U_m*2/3*np.cos(x-2/3*np.pi))
    U_C.set_data(x, U_m*2/3*np.cos(x+2/3*np.pi))
    U_SVPWM.set_data(x, U_m*np.cos(2*x))
    # U_A=np.sin(x)
    # U_B=np.cos(x)
    # U_A.set_data(x, U_A)
    # U_B.set_data(x, U_B)
    # con.xy1 = pos
    # con.xy2 = i, pos[1]
    return line_l,line_m, U_A, U_B, U_C, U_SVPWM,line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C#, con#point


ani = animation.FuncAnimation(fig,animate,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.linspace(0, 2*np.pi, 128),
                            repeat_delay=0)#,init_func=init
# plt.ion()
plt.show()

```

    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\tkinter\__init__.py:839: UserWarning: There are no gridspecs with layoutgrids. Possibly did not call parent GridSpec with the "figure" keyword
      func(*args)
    


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
##########Annoate theta#####################################
theta_template = 'theta = %.0fdeg'
theta_text = ax_u_l.text(0.05, 0.9, '', transform=ax_u_l.transAxes, fontsize = 14)  
theta_text.set_text(theta_template % (0))#'theta = %.0fs'
theta_text.set_text('theta = %.0fdeg')

#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.plot(2/3*theta_1_x,2/3*theta_1_y)
ax_u_l.plot(2/3*(np.sqrt(3)/2)*theta_1_x,2/3*(np.sqrt(3)/2)*theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)

ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot(2/3*theta_x, 2/3*theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))


line, = ax_u_l.plot([0], [0],'k--')

origin, = ax_u_l.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_S_m          = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))

# theObject, = ax_u_l.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# x = np.linspace(0, 2 * np.pi, 50)
# U_A=U_m*np.cos(x)
# U_B=U_m*np.cos(x-2/3*np.pi)
# U_C=U_m*np.cos(x+2/3*np.pi)
# U_SVPWM=np.cos(x)
# U_alpha=U_A
# U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    # line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    # U_A.set_data([], [])
    # U_B.set_data([], [])
    # U_C.set_data([], [])
    # U_alpha.set_data([], [])
    # U_beta.set_data([], [])
    # U_SVPWM.set_data([], [])

    # theObject.set_data([], [])
    theta_text.set_text('')
    # theta_text.set_text(theta_template % (0))
    return theta_text,#theObject#U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    theta_deg = frames
    theta_radian=math.radians(theta_deg)
    U_alpha=np.cos(theta_radian)
    U_beta=np.sin(theta_radian)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_alpha
    line_l_end_y=U_beta
    theta_text.set_text(theta_template % (theta_deg))
    #########Calculate N from U_alpha U_beta#####################################
    U_ref1=U_beta
    U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
    U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
    if U_ref1>0:
        A = 1
    else :
        A = 0
    if U_ref2>0:
        B = 1
    else :
        B = 0
    if U_ref3>0:
        C = 1
    else :
        C = 0
    N=4*C+2*B+A
    print("N = ",N)
    T_x = np.sqrt(3)*Ts*U_beta/U_dc
    T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    # sector=math.ceil(theta_radian/(1/3*np.pi))# up 
    sector=int(theta_radian/(1/3*np.pi)+1)# up 
    print("sector = ",sector)
    print("deg = ",theta_deg)
    match sector:
        case 1:#Sector 1 N 3
            ####Sector 4-6 ####
            T_1_temp=-T_z
            T_2_temp=T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
            U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_6_end_x
            U_4_2_Us_end_dy=U_6_end_y

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_4_end_x
            U_6_2_Us_end_dy=U_4_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_4_end_x+U_6_end_x
            U_S_m_end_y=U_4_end_y+U_6_end_y

            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("U_4 = ",T_1*2/3*U_dc)
        case 2:#Sector 2 N 1
            ####Sector 6-2 ####
            T_1_temp = T_y
            T_2_temp = T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_2_end_x
            U_6_2_Us_end_dy=U_2_end_y

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_6_end_x
            U_2_2_Us_end_dy=U_6_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_6_end_x+U_2_end_x
            U_S_m_end_y=U_6_end_y+U_2_end_y

            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        case 3:#Sector 3 N 5
            ####Sector 2-3 ####
            T_1_temp = T_x
            T_2_temp = -T_y
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
            U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_3_end_x
            U_2_2_Us_end_dy=U_3_end_y

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_2_end_x
            U_3_2_Us_end_dy=U_2_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_2_end_x+U_3_end_x
            U_S_m_end_y=U_2_end_y+U_3_end_y

            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            # U_c_phase
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 4:#Sector 4 N 4
            ####Sector 3-1 ####
            T_1_temp = T_z
            T_2_temp = -T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
            U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_1_end_x
            U_3_2_Us_end_dy=U_1_end_y

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_3_end_x
            U_1_2_Us_end_dy=U_3_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_3_end_x+U_1_end_x
            U_S_m_end_y=U_3_end_y+U_1_end_y
            
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 5:#Sector 5 N 6
            ####Sector 1-5 ####
            T_1_temp = -T_y
            T_2_temp = -T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_5_end_x
            U_1_2_Us_end_dy=U_5_end_y

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_1_end_x
            U_5_2_Us_end_dy=U_1_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_1_end_x+U_5_end_x
            U_S_m_end_y=U_1_end_y+U_5_end_y
            
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        
        case 6:#Sector 6 N 2
            ####Sector 5-4 ####
            T_1_temp =-T_x 
            T_2_temp = T_y
            if (T_1_temp+T_2_temp)>=Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
            U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_4_end_x
            U_5_2_Us_end_dy=U_4_end_y

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_5_end_x
            U_4_2_Us_end_dy=U_5_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_5_end_x+U_4_end_x
            U_S_m_end_y=U_5_end_y+U_4_end_y

            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear    
    return line_l,theta_text,U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m #line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point
    # return line_l,#U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m#line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,init_func=init,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)  #,init_func=init





ax_u_l.grid()
plt.show()
```

    N =  2
    sector =  1
    deg =  0
    T_1 =  5e-05
    T_2 =  0.0
    T_0 =  0.0
    U_4 =  3.3333333333333335e-05
    N =  3
    sector =  1
    deg =  1
    T_1 =  4.9002286005287666e-05
    T_2 =  9.97713994712331e-07
    T_0 =  5.505714157152952e-21
    U_4 =  3.266819067019178e-05
    N =  3
    sector =  1
    deg =  2
    T_1 =  4.802369376253133e-05
    T_2 =  1.976306237468674e-06
    T_0 =  8.470329472543003e-22
    U_4 =  3.201579584168755e-05
    N =  3
    sector =  1
    deg =  3
    T_1 =  4.706309915684302e-05
    T_2 =  2.9369008431569853e-06
    T_0 =  -4.235164736271502e-21
    U_4 =  3.137539943789535e-05
    N =  3
    sector =  1
    deg =  4
    T_1 =  4.611944059757898e-05
    T_2 =  3.88055940242102e-06
    T_0 =  2.541098841762901e-21
    U_4 =  3.074629373171932e-05
    N =  3
    sector =  1
    deg =  5
    T_1 =  4.5191713897072935e-05
    T_2 =  4.808286102927068e-06
    T_0 =  -8.470329472543003e-22
    U_4 =  3.012780926471529e-05
    N =  3
    sector =  1
    deg =  6
    T_1 =  4.4278967598536984e-05
    T_2 =  5.7210324014630094e-06
    T_0 =  8.470329472543003e-21
    U_4 =  2.951931173235799e-05
    


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
#创建figure窗口，figsize设置窗口的大小
# fig, ax = plt.figure()
# fig, ax = plt.subplots()#figsize = (8.0,8.0)
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)
# theta_rad_2=math.radians(theta_2)
# ax_u_r.plot(center[:,0], center[:,1])#, color='r'
###Draw a Hexagon ############
ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))

# x = np.linspace(0, 2 * np.pi, 50)
# ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"

#设置坐标轴刻度
# my_x_ticks = np.linspace(-2, 2, 10)
# #对比范围和名称的区别
# #my_x_ticks = np.arange(-5, 2, 0.5)
# my_y_ticks = np.linspace(-2, 2, 10)
# ax_u_l.set_xticks(my_x_ticks)
# ax_u_l.set_yticks(my_x_ticks)
# plt.xticks()
# plt.yticks(my_y_ticks)
# ax_u_l.plot(theta_x,theta_y)

time =41/24*np.pi #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)

U_alpha =   U_m*np.cos(time)
U_beta  =   U_m*np.sin(time)
U_S_x   =   U_dc*np.cos(time)
U_S_y   =   U_dc*np.sin(time)
U_A_x   =   U_m*np.cos(time)
U_A_y   =   0
U_B_x   =   U_m*np.cos(2/3*np.pi)*np.cos(time-2/3*np.pi)
U_B_y   =   U_m*np.sin(2/3*np.pi)*np.cos(time-2/3*np.pi)
U_C_x   =   U_m*np.cos(4/3*np.pi)*np.cos(time+2/3*np.pi)
U_C_y   =   U_m*np.sin(4/3*np.pi)*np.cos(time+2/3*np.pi)
#########Calculate N from U_alpha U_beta#####################################
U_ref1=U_beta
U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
if U_ref1>0:
    A = 1
else :
    A = 0
if U_ref2>0:
     B = 1
else :
     B = 0
if U_ref3>0:
    C = 1
else :
     C = 0
N=4*C+2*B+A
print("N = ",N)
T_x = np.sqrt(3)*Ts*U_beta/U_dc
T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
sector=math.ceil(time/(1/3*np.pi))# up 
print("sector = ",sector)
match sector:
    case 1:#Sector 1 N 3
        ####Sector 4-6 ####
        T_1_temp=-T_z
        T_2_temp=T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
        U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_6_end_x
        U_4_2_Us_end_dy=U_6_end_y

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_4_end_x
        U_6_2_Us_end_dy=U_4_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_4_end_x+U_6_end_x
        U_S_m_end_y=U_4_end_y+U_6_end_y

        U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
        print("U_4 = ",T_1*2/3*U_dc)
    case 2:#Sector 2 N 1
        ####Sector 6-2 ####
        T_1_temp = T_y
        T_2_temp = T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_2_end_x
        U_6_2_Us_end_dy=U_2_end_y

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_6_end_x
        U_2_2_Us_end_dy=U_6_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_6_end_x+U_2_end_x
        U_S_m_end_y=U_6_end_y+U_2_end_y

        U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
    case 3:#Sector 3 N 5
        ####Sector 2-3 ####
        T_1_temp = T_x
        T_2_temp = -T_y
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
        U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_3_end_x
        U_2_2_Us_end_dy=U_3_end_y

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_2_end_x
        U_3_2_Us_end_dy=U_2_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_2_end_x+U_3_end_x
        U_S_m_end_y=U_2_end_y+U_3_end_y

        U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
    case 4:#Sector 4 N 4
        ####Sector 3-1 ####
        T_1_temp = T_z
        T_2_temp = -T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
        U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_1_end_x
        U_3_2_Us_end_dy=U_1_end_y

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_3_end_x
        U_1_2_Us_end_dy=U_3_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_3_end_x+U_1_end_x
        U_S_m_end_y=U_3_end_y+U_1_end_y

        U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
    case 5:#Sector 5 N 6
        ####Sector 1-5 ####
        T_1_temp = -T_y
        T_2_temp = -T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_5_end_x
        U_1_2_Us_end_dy=U_5_end_y

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_1_end_x
        U_5_2_Us_end_dy=U_1_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_1_end_x+U_5_end_x
        U_S_m_end_y=U_1_end_y+U_5_end_y

        U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
    case 6:#Sector 6 N 2
        ####Sector 5-4 ####
        T_1_temp =-T_x 
        T_2_temp = T_y
        if (T_1_temp+T_2_temp)>=Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
        U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_4_end_x
        U_5_2_Us_end_dy=U_4_end_y

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_5_end_x
        U_4_2_Us_end_dy=U_5_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_5_end_x+U_4_end_x
        U_S_m_end_y=U_5_end_y+U_4_end_y

        U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

# print("T_x = ",T_x)
# print("T_y = ",T_y)
# print("T_z = ",T_z)
# U_alpha_Start_x     =   0
# U_alpha_Start_y     =   0
# U_alpha_End_x       =   U_alpha
# U_alpha_End_y       =   0

# U_beta_Start_x      =   0
# U_beta_Start_y      =   0
# U_beta_End_x        =   0
# U_beta_End_y        =   U_beta

# U_S_Start_x =   0
# U_S_Start_y =   0
# U_S_End_x   =   U_S_x
# U_S_End_y   =   U_S_y

# U_A_Start_x =   0
# U_A_Start_y =   0
# U_A_End_x   =   U_A_x
# U_A_End_y   =   U_A_y

# U_B_Start_x =   0
# U_B_Start_y =   0
# U_B_End_x   =   U_B_x
# U_B_End_y   =   U_B_y

# U_C_Start_x =   0
# U_C_Start_y =   0
# U_C_End_x   =   U_C_x
# U_C_End_y   =   U_C_y

# U_A_2_U_B_Start_x   = U_A_End_x
# U_A_2_U_B_Start_y   = U_A_End_y
# U_A_2_U_B_End_dx     = U_B_End_x
# U_A_2_U_B_End_dy     = U_B_End_y

# U_B_2_U_C_Start_x   = U_A_2_U_B_Start_x + U_A_2_U_B_End_dx
# U_B_2_U_C_Start_y   = U_A_2_U_B_Start_y + U_A_2_U_B_End_dy
# U_B_2_U_C_End_dx     = U_C_End_x
# U_B_2_U_C_End_dy     = U_C_End_y



# U_S = ax_u_l.add_patch(plt.Arrow(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, width = 0.05, color = 'b'))


# U_A = ax.add_patch(plt.Arrow(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, width = 0.05, color = 'g'))
# U_B = ax.add_patch(plt.Arrow(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, width = 0.05, color = 'r'))
# U_C = ax.add_patch(plt.Arrow(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, width = 0.05, color = 'c'))
# U_alpha = ax.add_patch(plt.Arrow(U_alpha_Start_x,U_alpha_Start_y,U_alpha_End_x,U_alpha_End_y, width = 0.05, color = 'r'))
# U_beta = ax.add_patch(plt.Arrow(U_beta_Start_x,U_beta_Start_y,U_beta_End_x,U_beta_End_y, width = 0.05, color = 'c'))
# U_A_2_U_B = ax.add_patch(plt.Arrow(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_dx,U_A_2_U_B_End_dy, width = 0.05, color = 'm'))
# U_B_2_U_C = ax.add_patch(plt.Arrow(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_dx,U_B_2_U_C_End_dy, width = 0.05, color = 'y'))
# print("U_B_2_U_C_Start_x = ",U_B_2_U_C_Start_x)
# print("U_B_2_U_C_Start_y = ",U_B_2_U_C_Start_y)
# print("U_B_2_U_C_End_x   = ",U_B_2_U_C_End_x)
# print("U_B_2_U_C_End_y   = ",U_B_2_U_C_End_y)
# U_S = ax.plot(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, color = 'b')
# U_A = ax.plot(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, color = 'g')
# U_B = ax.plot(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, color = 'r')
# U_C = ax.plot(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, color = 'c')
# U_A_2_U_B = ax.plot(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_x,U_A_2_U_B_End_y, color = 'm')
# U_B_2_U_C = ax.plot(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_x,U_B_2_U_C_End_y, color = 'y')

plt.grid()
plt.show()
```

    N =  2
    sector =  6
    


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
#创建figure窗口，figsize设置窗口的大小
# fig, ax = plt.figure()
# fig, ax = plt.subplots()#figsize = (8.0,8.0)
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=12
U_m=1/3*U_dc

theta_deg=np.arange(0, 360, 1)
theta_deg_len   =   len(theta_deg)
T_1_temp        =   np.zeros(theta_deg_len)
T_2_temp        =   np.zeros(theta_deg_len)
T_1             =   np.zeros(theta_deg_len)
T_2             =   np.zeros(theta_deg_len)
T_0             =   np.zeros(theta_deg_len)
T_a             =   np.zeros(theta_deg_len)
T_b             =   np.zeros(theta_deg_len)
T_c             =   np.zeros(theta_deg_len)
T_cm1           =   np.zeros(theta_deg_len)
T_cm2           =   np.zeros(theta_deg_len)
T_cm3           =   np.zeros(theta_deg_len)
T_1_add_T_2     =   np.zeros(theta_deg_len)
theta_radian =np.deg2rad(theta_deg) #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)
# theta_radian =41/24*np.pi #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)

U_alpha  =   U_m*np.cos(theta_radian)
U_beta   =   U_m*np.sin(theta_radian)
U_AN     =   U_m*np.cos(theta_radian)
U_BN     =   U_m*np.cos(theta_radian-2/3*np.pi)
U_CN     =   U_m*np.cos(theta_radian+2/3*np.pi)

K_1=np.sqrt(3)/(U_dc*freq)
sector=np.floor(theta_radian/(np.pi/3)+1)# up
T_x=K_1*U_beta
T_y=K_1*(np.sqrt(3)*U_alpha/2+U_beta/2)
T_z=K_1*(-np.sqrt(3)*U_alpha/2+U_beta/2)

# print('ok')
for theta_deg_index in theta_deg:
    match sector[theta_deg_index]:
        case 1:
            T_1_temp[theta_deg_index]=-T_z[theta_deg_index]
            T_2_temp[theta_deg_index]= T_x[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_a[theta_deg_index]
            T_cm2[theta_deg_index]=T_b[theta_deg_index]
            T_cm3[theta_deg_index]=T_c[theta_deg_index]

        case 2:
            T_1_temp[theta_deg_index]= T_z[theta_deg_index]
            T_2_temp[theta_deg_index]= T_y[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
           
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_b[theta_deg_index]
            T_cm2[theta_deg_index]=T_a[theta_deg_index]
            T_cm3[theta_deg_index]=T_c[theta_deg_index]
        case 3:
            T_1_temp[theta_deg_index]= T_x[theta_deg_index]
            T_2_temp[theta_deg_index]=-T_y[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_c[theta_deg_index]
            T_cm2[theta_deg_index]=T_a[theta_deg_index]
            T_cm3[theta_deg_index]=T_b[theta_deg_index]

        case 4:
            T_1_temp[theta_deg_index]=-T_x[theta_deg_index]
            T_2_temp[theta_deg_index]= T_z[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_c[theta_deg_index]
            T_cm2[theta_deg_index]=T_b[theta_deg_index]
            T_cm3[theta_deg_index]=T_a[theta_deg_index]
        
        case 5:
            T_1_temp[theta_deg_index]=-T_y[theta_deg_index]
            T_2_temp[theta_deg_index]=-T_z[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_b[theta_deg_index]
            T_cm2[theta_deg_index]=T_c[theta_deg_index]
            T_cm3[theta_deg_index]=T_a[theta_deg_index]

        case 6:
            T_1_temp[theta_deg_index]=  T_y[theta_deg_index]
            T_2_temp[theta_deg_index]= -T_x[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_a[theta_deg_index]
            T_cm2[theta_deg_index]=T_c[theta_deg_index]
            T_cm3[theta_deg_index]=T_b[theta_deg_index]
# T_1_add_T_2=T_1+T_2
# ax_u_l.plot(theta_deg,U_alpha)
# ax_u_l.plot(theta_deg,U_beta)
# ax_u_l.plot(theta_deg,U_AN)
# ax_u_l.plot(theta_deg,U_BN)
# ax_u_l.plot(theta_deg,U_CN)
# ax_u_l.plot(theta_deg,sector)
ax_u_l.plot(theta_deg,T_cm1)
ax_u_l.plot(theta_deg,T_cm2)
ax_u_l.plot(theta_deg,T_cm3)

# pandas write to Excel
# df = pd.DataFrame({'theta_deg':theta_deg,\
#                     'U_alpha':U_alpha,\
#                     'U_beta':U_beta,\
#                     'U_AN':U_AN,\
#                     'U_BN':U_BN,\
#                     'U_CN':U_CN,\
#                     'sector':sector,\
#                     'T_cm1':T_cm1,\
#                     'T_cm2':T_cm2,\
#                     'T_cm3':T_cm3,  
#                   })
# df = df.set_index('theta_deg')# Set index
# df.to_excel('./output.xlsx')# write to current folder

plt.grid()
plt.show()
```


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
R = 0.6
T = 2 # secs
frames = T*25
interval = 40
omega = 2*np.pi/T
# theta = np.linspace(0, 2*np.pi, 13)
# # center= np.zeros((13,2))
# x = np.cos(theta)
# plt(np.cos(x), np.sin(x), "k", lw=0.3)
def position(time=0):
    x = R*np.cos(time)
    y = R*np.sin(time)
    return {'x' : x, 'y' : y}

# def velocity(time=0,R=0.1):
#     x = -R*omega*np.sin(omega*time)**2*3
#     y = R*omega*np.cos(omega*time)**2*3
#     return {'x' : x, 'y' : y}

# def acceleration(time=0,R=0.05):
#     x = -R*(omega**2)*np.cos(omega*time)*6
#     y = -R*(omega**2)*np.sin(omega*time)*6
#     return {'x' : x, 'y' : y}

def init():
    # line.set_data([], [])
    # theObject.set_data([], [])
    time_text.set_text('')
    return   time_text,#theObject,#line,
def animate(time):
    time /= (frames/T)
    # thisx = [0, position(time)['x'], velocity(time)['x'], acceleration(time)['x']]
    # thisy = [0, position(time)['y'], velocity(time)['y'], acceleration(time)['y']]
    # line.set_data(thisx[:2], thisy[:2])
    # theObject.set_data(thisx[1], thisy[1])
    time_text.set_text(time_template % (time))
    # ax.patches.pop(0)
    # ax.patches.pop(0)
    U_S = ax.add_patch(plt.Arrow(0,0,np.cos(time),np.sin(time), width = 0.1, color = 'r'))
    # accel = ax.add_patch(plt.Arrow(thisx[1],thisy[1],thisx[3],thisy[3], width = 0.1, color = 'b'))
    return   U_S, time_text,#theObject,#, accel  line,  


# First set up the figure, the axis, and the plot element we want to animate
fig, ax = plt.subplots(figsize = (8.0,8.0))
x = np.linspace(0, 2 * np.pi, 50)
# center= np.zeros((13,2))
# x = np.cos(theta)
ax.plot(np.cos(x), np.sin(x), "k", lw=0.3)

ax.set_xlim(( -R*2, R*2))
ax.set_ylim((( -R*2, R*2)))
ax.set_aspect('equal')
ax.grid()
time_template = 'time = %.1fs'
time_text = ax.text(0.05, 0.9, '', transform=ax.transAxes, fontsize = 14)  
time_text.set_text(time_template % (0))
# line, = ax.plot([0, position(0)['x']], [0, position(0)['y']],'k--')
origin, = ax.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
# theObject, = ax.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# theObject, = ax.plot([position(0)['x']], [position(0)['x']], marker = 'o', markersize = 1000, markerfacecolor = 'b')
# U_S = ax.add_patch(plt.Arrow(position(0)['x'], position(0)['y'],  velocity(0)['x'], velocity(0)['y'], width = 0.1, color = 'r'))
U_S = ax.add_patch(plt.Arrow([0], [0],  [0], [0], width = 0.01, color = 'r'))
# accel    = ax.add_patch(plt.Arrow(position(0)['x'], position(0)['y'],  acceleration(0)['x'], acceleration(0)['y'], width = 0.1, color = 'b'))


anim = animation.FuncAnimation(fig, animate, init_func=init, interval = interval, blit=True)#, frames = 1000
plt.show()
```

$\frac{2\pi}{3}$


```python
###########SVPWM UA UB UC#######################
################################################
# import itertools
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
def position(time=0):
    x = np.cos(time)
    y = np.sin(time)
    return {'x' : x, 'y' : y}

sector=[1,5,0,3,2,4]
# fig, (ax_u_l,axm,axr) = plt.subplots(
#     ncols=3,
#     # nrows=2,
#     sharey=True,
#     # figsize=(6, 2),
#     figsize=(10, 5),
#     gridspec_kw=dict(width_ratios=[1,1,2], wspace=0),
# )

####################################
##--------------------------------##
###0------1------2----------------4#
##0|ax_u_l|ax_u_l|    ax_u_r      |#
###--------------------------------#
##1|    ax_d_l   |    ax_d_r      |#
###0------1------2----------------4#
##--------------------------------##
####################################
fig = plt.figure(figsize=(6, 6),constrained_layout=True)
fig.suptitle("SVPWM")
# ,constrained_layout=True
# gs = GridSpec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=0 ,hspace=0.2)
# gs = GridSpec(nrows=2,#2
#             ncols=4, #4
#             width_ratios=[2,2,2,2], 
#             height_ratios=[2, 2], 
#             wspace=0 ,
#             hspace=0.12,
#             left=0.05, 
#             right=0.95, 
#             top=0.95, 
#             bottom=0.05)#,top=2,left=1,right=2,bottom=1
# gs = fig.add_gridspec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=None ,hspace=0.05)
ax_u_l = fig.add_subplot()#gs[0,0:1]
# ax_u_l.set_aspect(1)

ax_u_l.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
# ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
#                       ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
# ax_u_l.xaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.xaxis.set_ticks(np.linspace(-1.5,1.5,11))
plt.xticks(rotation=15)
# ax_u_l.yaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.yaxis.set_ticks(np.linspace(-1.5,1.5,11))
# ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
#                     ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])
ax_u_l.set_xlim(-1.5,1.5)
ax_u_l.set_ylim(-1.5,1.5)
# ax_u_l.spines[:].set_visible(False)
plt.grid()
# ax_u_m = fig.add_subplot(gs[0,1:2])
# ax_u_m.yaxis.set_visible(True)
# ax_u_m.axes.yaxis.set_ticklabels([])
# plt.grid()

# ax_u_r = fig.add_subplot(gs[0,2:4])
# # ax_u_r.set_box_aspect(1 / 3)
# # ax_u_r.yaxis.set_visible(False)
# ax_u_r.xaxis.set_ticks([0, np.pi/3, 2*np.pi/3, np.pi, 4*np.pi/3, 5*np.pi/3, 2*np.pi], 
#                        ["0", r"$\pi$/3", r"2*$\pi$/3", r"$\pi$", r"4*$\pi$/3", r"5*$\pi$/3", r"$2\pi$"])
# ax_u_r.yaxis.set_visible(True)
# ax_u_r.axes.yaxis.set_ticklabels([])
# plt.grid()
# ax_d_l = fig.add_subplot(gs[1,0:2])
# plt.grid()
# ax_d_r = fig.add_subplot(gs[1,2:4])
# ax_d_r.yaxis.set_visible(True)
# ax_d_r.axes.yaxis.set_ticklabels([])
# # ax_d_r.yaxis.set_visible(False)
# plt.grid()


# Pre Define
U_dc=12 #Voltage
U_m=1#2/3*U_dc


## Set axes x y ratio Axes
# ax_u_l.set_aspect(1)
# ax_u_m.set_box_aspect(1)
# ax_u_r.set_box_aspect(1 / 2)
## Plot left Axes
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
x[1::2] *= 0.5
y = np.sin(theta)
y_1 = np.sin(theta_1)
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
ax_u_l.plot(x[::2], y[::2])#, color='r'
ax_u_l.plot(center[:,0], center[:,1])#, color='r'
ax_u_l.plot(x_1, y_1)#, color='r'
# draw circle with initial point in left Axes
x = np.linspace(0, 2 * np.pi, 50)
ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
point_l, = ax_u_l.plot(0, 0, "o")
# plt.quiver(0, 0, 0.5, 1, angles='xy', scale=1.03, scale_units='xy', width=0.005)
line_l              = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_C          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A_2_U_B    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B_2_U_C    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01, color = 'r'))#, color = 'r'

ax_u_l.grid('both')

# plot axm middle
# ax_u_m.yaxis.set_visible(False)
# ax_u_m.axes.xaxis.set_ticklabels([])
# ax_u_m.axes.yaxis.set_ticklabels([])
# ax_u_m.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
# point_m, = ax_u_m.plot(0, 0, "o")
# line_m = ax_u_m.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# ax_u_m.grid('both')


## Plot Right Axes

# draw full curve to set view limits in right Axes
U_A=U_m*np.cos(x)
U_B=U_m*np.cos(x-2/3*np.pi)
U_C=U_m*np.cos(x+2/3*np.pi)
U_SVPWM=np.cos(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[])

    # theObject.set_data([], [])
    # time_text.set_text('')
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    x = frames
    pos = np.cos(x), np.sin(x)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_m*np.cos(x)
    line_l_end_y=U_m*np.sin(x)

    line_l_U_A_start_x=0
    line_l_U_A_start_y=0
    line_l_U_A_end_x=U_m*2/3*np.cos(x)
    line_l_U_A_end_y=0
    
    line_l_U_B_start_x=0
    line_l_U_B_start_y=0
    line_l_U_B_end_x=np.cos(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)#np.abs(np.cos(2/3*np.pi))
    line_l_U_B_end_y=np.sin(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)

    line_l_U_C_start_x=0
    line_l_U_C_start_y=0
    line_l_U_C_end_x=np.cos(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    line_l_U_C_end_y=np.sin(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    
    line_l_U_A_2_U_B_start_x    = line_l_U_A_end_x
    line_l_U_A_2_U_B_start_y    = line_l_U_A_end_y
    line_l_U_A_2_U_B_end_dx     = line_l_U_B_end_x #+ 0.2 #line_l_U_B_end_x#-line_l_U_B_start_x
    line_l_U_A_2_U_B_end_dy     = line_l_U_B_end_y #+ 0.2 #line_l_U_B_end_y#-line_l_U_B_start_y
    line_l_U_B_2_U_C_start_x    = line_l_U_A_2_U_B_start_x+line_l_U_A_2_U_B_end_dx
    line_l_U_B_2_U_C_start_y    = line_l_U_A_2_U_B_start_y+line_l_U_A_2_U_B_end_dy
    line_l_U_B_2_U_C_end_dx     = line_l_U_C_end_x #+ line_l_U_C_end_x#-line_l_U_C_start_x
    line_l_U_B_2_U_C_end_dy     = line_l_U_C_end_y #+ line_l_U_C_end_y#-line_l_U_C_start_y


    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_A      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_C      = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    line_l_U_A_2_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_A_2_U_B_start_x,line_l_U_A_2_U_B_start_y,line_l_U_A_2_U_B_end_dx,line_l_U_A_2_U_B_end_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B_2_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_B_2_U_C_start_x,line_l_U_B_2_U_C_start_y,line_l_U_B_2_U_C_end_dx,line_l_U_B_2_U_C_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_A = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear

    # line_m = ax_u_m.add_patch(plt.Arrow(0,0,U_m*np.cos(x),U_m*np.sin(x), width = 0.1))#, color = 'r' # works good except the arror cannot disapear

    # line = ax_u_l.arrow(0,0,np.cos(i),np.sin(i), head_width = 0.05,  
    #      head_length = 0.1) # works good except the arror cannot disapear, width = 0.1, color = 'r'
    # U_A.set_data(x, U_m*2/3*np.cos(x))
    # # U_A.set_data(x, pos[:,0])
    # U_B.set_data(x, U_m*2/3*np.cos(x-2/3*np.pi))
    # U_C.set_data(x, U_m*2/3*np.cos(x+2/3*np.pi))
    # U_SVPWM.set_data(x, U_m*np.cos(2*x))
    # U_A=np.sin(x)
    # U_B=np.cos(x)
    # U_A.set_data(x, U_A)
    # U_B.set_data(x, U_B)
    # con.xy1 = pos
    # con.xy2 = i, pos[1]
    return line_l,line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.linspace(0, 2*np.pi, 128),
                            repeat_delay=0)#,init_func=init
# plt.ion()
plt.show()

```


```python
# sector calculation
step=0.01
theta=np.arange(step,4*np.pi,step)
theta_len=len(theta)
A=np.zeros(theta_len)
B=np.zeros(theta_len)
C=np.zeros(theta_len)
sector=np.zeros(theta_len)

U_dc=12
freq=20000
Ts=1/freq
U_alpha=U_dc*np.cos(theta)
U_beta=U_dc*np.sin(theta)
U_A=U_dc*np.cos(theta)
U_B=U_dc*np.cos(theta-2/3*np.pi)
U_C=U_dc*np.cos(theta+2/3*np.pi)


# Sector calculation
U_1=U_dc*np.sin(theta)#U_beta
U_2=np.sqrt(3)/2*U_alpha-1/2*U_beta
U_3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
for index in range(theta_len):
    if U_1[index]>0:
        A[index]=1
    else:
        A[index]=0

    if U_2[index]>0:
        B[index]=1
    else:
        B[index]=0

    if U_3[index]>0:
        C[index]=1
    else:
        C[index]=0
    #N calculation
    N=4*C+2*B+A
    ## match N with sector
    match N[index]:
        case 3:
            sector[index]=1
        case 1:
            sector[index]=2
        case 5:
            sector[index]=3
        case 4:
            sector[index]=4
        case 6:
            sector[index]=5
        case 2:
            sector[index]=6
# Time calculation
Tx=np.sqrt(3)*Ts*U_beta/U_dc
Ty=np.sqrt(3)*Ts*(np.sqrt(3)*U_alpha/2+U_beta/2)/U_dc
Tz=np.sqrt(3)*Ts*(-np.sqrt(3)*U_alpha/2+U_beta/2)/U_dc

plt.plot(theta,U_A)
plt.plot(theta,U_B)
plt.plot(theta,U_C)

# plt.plot(theta,N)
# plt.plot(theta,sector)
plt.grid()
plt.show()
```


```python
import numpy as np
import math
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# %matplotlib widget
fig, ax = plt.subplots()
ax.set_xlim(0,2*np.pi)
ax.set_ylim(-1.5,1.5)

x = np.arange(0, 2*np.pi, 0.01)
# U_A, = ax.plot(x, np.cos(x))
# U_B, = ax.plot(x, np.cos(x-2/3*np.pi))
# U_C, = ax.plot(x, np.cos(x+2/3*np.pi))
# U_A, = ax.plot(x,np.cos(x))
# U_B, = ax.plot(x,np.cos(x-2/3*np.pi))
# U_C, = ax.plot(x,np.cos(x+2/3*np.pi))
# line1, =ax.add_patch(plt.axvline(x,color='r', linestyle='--', label='xxx'))#, color = 'r', color = 'r'# works good except the arror cannot disapear
# line1, =ax.axvline(0, color='r', linestyle='--', label='xxx')
vl = ax.axvline(0, ls='-', color='r', lw=1, zorder=10)
line, = ax.plot([],[], lw=2)
U_A,  = ax.plot([],[], lw=2)
U_B,  = ax.plot([],[], lw=2)
U_C,  = ax.plot([],[], lw=2)
def animate(frames):
    i=frames
    i_rad=math.radians(i)
    line.set_data(x,np.cos( x-i_rad ))  #+1/2*np.pi/ 150 update the data.
    # U_A.set_data(x,2/3*np.cos( i_rad-2/3*np.pi))  #+1/2*np.pi/ 150 update the data.
    U_A.set_data(x,2/3*np.cos( i_rad)*np.cos(x))  #+1/2*np.pi/ 150 update the data.
    U_B.set_data(x,2/3*np.cos( i_rad-2/3*np.pi)*np.cos(x))  #+1/2*np.pi/ 150 update the data.
    U_C.set_data(x,2/3*np.cos( i_rad+2/3*np.pi)*np.cos(x))  #+1/2*np.pi/ 150 update the data.

    # U_A.set_ydata(np.cos(x + i ))  #/ 150 update the data.
    # U_B.set_ydata(np.cos(x -2/3*np.pi+ i ))  #/ 150 update the data.
    # U_C.set_ydata(np.cos(x +2/3*np.pi+ i ))  #/ 150 update the data.
    # U_A.set_xdata(i_rad)  #/ 150 update the data.
    # U_B.set_xdata(i_rad)  #/ 150 update the data.
    # U_C.set_xdata(i_rad)  #/ 150 update the data.
    # U_A.set_data(i_rad,np.cos( i_rad ))  #/ 150 update the data.
    # U_B.set_data(i_rad,np.cos( -2/3*np.pi+ i_rad ))  #/ 150 update the data.
    # U_C.set_data(i_rad,np.cos( +2/3*np.pi+ i_rad ))  #/ 150 update the data.
    # ax.hlines(y=x + i / 50, xmin=0.0, xmax=1.0, color='b')
    # ax.vlines(x,  ymin=0.0, ymax=1.0,color='b')#
    # ax.vlines(x)#,  ymin=0.0, ymax=1.0,color='b'
    # xxxx.setdata(i)  # update the data.
    # line1 = ax.add_patch(plt.axvline(i_rad,color='r', linestyle='--', label='0'))#, color = 'r'# works good except the arror cannot disapear

    # line1.add_patch(plt.axvline(i_rad,color='r', linestyle='--', label='xxx'))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    # print("x = ",x)
    vl.set_xdata([i_rad,i_rad])

    # line1.set_xdata([i_rad,i_rad])
    # print("i = ",i)
    # ax.axvline(i_rad, color='r', linestyle='--', label='xxx')
    # print("i_rad = ",i_rad)

    return vl,line,U_A,U_B,U_C#U_A,U_B,U_C,,xxxx


# ani = animation.FuncAnimation(
#                                 fig, animate, interval=200, blit=True, save_count=50)
# ani = animation.FuncAnimation(fig, animate, frames=100,interval=20, blit=False)#, init_func=init

ani = animation.FuncAnimation(fig,animate,interval=50,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            )#repeat_delay=0,init_func=init

# To save the animation, use e.g.
#
# ani.save("movie.mp4")
#
# or
#
# writer = animation.FFMpegWriter(
#     fps=15, metadata=dict(artist='Me'), bitrate=1800)
# ani.save("movie.mp4", writer=writer)
plt.grid()
plt.show()
```


```python
import math
0.2*np.cos(math.radians(37))
# (22+45)/2
np.arange(22,45,5)
np.linspace(22,45,5)
print("cos(2/3*pi)",np.cos(2/3*np.pi))
print("sin(2/3*pi)",np.sin(2/3*np.pi))
print("cos(4/3*pi)",np.cos(4/3*np.pi))
print("sin(4/3*pi)",np.sin(4/3*np.pi))
print("2/np.sqrt(3)",2/np.sqrt(3))
# np.an
# 0.2*np.cos(30/360*2*np.pi)
```

    cos(2/3*pi) -0.4999999999999998
    sin(2/3*pi) 0.8660254037844387
    cos(4/3*pi) -0.5000000000000004
    sin(4/3*pi) -0.8660254037844385
    2/np.sqrt(3) 1.1547005383792517
    


```python
###########SVPWM UA UB UC#######################
################################################
# import itertools
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import math
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# def position(time=0):
#     x = np.cos(time)
#     y = np.sin(time)
#     return {'x' : x, 'y' : y}

sector=[1,5,0,3,2,4]
# fig, (ax_u_l,axm,axr) = plt.subplots(
#     ncols=3,
#     # nrows=2,
#     sharey=True,
#     # figsize=(6, 2),
#     figsize=(10, 5),
#     gridspec_kw=dict(width_ratios=[1,1,2], wspace=0),
# )

####################################
##--------------------------------##
###0------1------2----------------4#
##0|ax_u_l|ax_u_l|    ax_u_r      |#
###--------------------------------#
##1|    ax_d_l   |    ax_d_r      |#
###0------1------2----------------4#
##--------------------------------##
####################################
fig = plt.figure(figsize=(6, 6),constrained_layout=True)
fig.suptitle("SVPWM")
# ,constrained_layout=True
# gs = GridSpec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=0 ,hspace=0.2)
# gs = GridSpec(nrows=2,#2
#             ncols=4, #4
#             width_ratios=[2,2,2,2], 
#             height_ratios=[2, 2], 
#             wspace=0 ,
#             hspace=0.12,
#             left=0.05, 
#             right=0.95, 
#             top=0.95, 
#             bottom=0.05)#,top=2,left=1,right=2,bottom=1
# gs = fig.add_gridspec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=None ,hspace=0.05)
ax_u_l = fig.add_subplot()#gs[0,0:1]
# ax_u_l.set_aspect(1)

ax_u_l.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
# ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
#                       ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
# ax_u_l.xaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.xaxis.set_ticks(np.linspace(-1.5,1.5,11))
plt.xticks(rotation=15)
# ax_u_l.yaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.yaxis.set_ticks(np.linspace(-1.5,1.5,11))
# ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
#                     ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])
ax_u_l.set_xlim(-1.5,1.5)
ax_u_l.set_ylim(-1.5,1.5)
# ax_u_l.spines[:].set_visible(False)
plt.grid()
# ax_u_m = fig.add_subplot(gs[0,1:2])
# ax_u_m.yaxis.set_visible(True)
# ax_u_m.axes.yaxis.set_ticklabels([])
# plt.grid()

# ax_u_r = fig.add_subplot(gs[0,2:4])
# # ax_u_r.set_box_aspect(1 / 3)
# # ax_u_r.yaxis.set_visible(False)
# ax_u_r.xaxis.set_ticks([0, np.pi/3, 2*np.pi/3, np.pi, 4*np.pi/3, 5*np.pi/3, 2*np.pi], 
#                        ["0", r"$\pi$/3", r"2*$\pi$/3", r"$\pi$", r"4*$\pi$/3", r"5*$\pi$/3", r"$2\pi$"])
# ax_u_r.yaxis.set_visible(True)
# ax_u_r.axes.yaxis.set_ticklabels([])
# plt.grid()
# ax_d_l = fig.add_subplot(gs[1,0:2])
# plt.grid()
# ax_d_r = fig.add_subplot(gs[1,2:4])
# ax_d_r.yaxis.set_visible(True)
# ax_d_r.axes.yaxis.set_ticklabels([])
# # ax_d_r.yaxis.set_visible(False)
# plt.grid()


# Pre Define
U_dc=12 #Voltage
U_m=1#2/3*U_dc


## Set axes x y ratio Axes
# ax_u_l.set_aspect(1)
# ax_u_m.set_box_aspect(1)
# ax_u_r.set_box_aspect(1 / 2)
## Plot left Axes
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
x[1::2] *= 0.5
y = np.sin(theta)
y_1 = np.sin(theta_1)
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
ax_u_l.plot(x[::2], y[::2])#, color='r'
ax_u_l.plot(center[:,0], center[:,1])#, color='r'
ax_u_l.plot(x_1, y_1)#, color='r'
# draw circle with initial point in left Axes
x = np.linspace(0, 2 * np.pi, 50)
ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
point_l, = ax_u_l.plot(0, 0, "o")
# plt.quiver(0, 0, 0.5, 1, angles='xy', scale=1.03, scale_units='xy', width=0.005)
line_l              = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_A          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_B          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_C          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_A_2_U_B    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_B_2_U_C    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01, color = 'r'))#, color = 'r'
U_alpha_axes_endx =1.5
U_alpha_axes_endy =0
# U_alpha_axes, = ax_u_l.plot([0,U_alpha_axes_endx], [0,U_alpha_axes_endy], "o")
U_alpha_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [U_alpha_axes_endx],[U_alpha_axes_endy], width = 0.05, color = 'r'))#
U_beta_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [U_alpha_axes_endy],[U_alpha_axes_endx], width = 0.05, color = 'r'))#
U_d_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.05, color = 'r'))#
U_q_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.05, color = 'r'))#

ax_u_l.grid('both')

# plot axm middle
# ax_u_m.yaxis.set_visible(False)
# ax_u_m.axes.xaxis.set_ticklabels([])
# ax_u_m.axes.yaxis.set_ticklabels([])
# ax_u_m.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
# point_m, = ax_u_m.plot(0, 0, "o")
# line_m = ax_u_m.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# ax_u_m.grid('both')


## Plot Right Axes

# draw full curve to set view limits in right Axes
U_A=U_m*np.cos(x)
U_B=U_m*np.cos(x-2/3*np.pi)
U_C=U_m*np.cos(x+2/3*np.pi)
U_SVPWM=np.cos(x)
U_alpha=U_A
U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_alpha.set_data([], [])
    U_beta.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    # x = frames
    x=math.radians(frames)
    pos = np.cos(x), np.sin(x)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_m*np.cos(x)
    line_l_end_y=U_m*np.sin(x)

    line_l_U_A_start_x=0
    line_l_U_A_start_y=0
    line_l_U_A_end_x=U_m*2/3*np.cos(x)
    line_l_U_A_end_y=0
    
    line_l_U_B_start_x=0
    line_l_U_B_start_y=0
    line_l_U_B_end_x=np.cos(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)#np.abs(np.cos(2/3*np.pi))
    line_l_U_B_end_y=np.sin(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)

    line_l_U_C_start_x=0
    line_l_U_C_start_y=0
    line_l_U_C_end_x=np.cos(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    line_l_U_C_end_y=np.sin(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    
    ## U_alpha U_beta
    U_alpha_dx=U_m*np.cos(x)
    U_alpha_dy=0
    U_beta_dx=0
    U_beta_dy=U_m*np.sin(x)
    ## U_d U_q
    U_d_dx=1.5*U_m*np.cos(x)
    U_d_dy=1.5*U_m*np.sin(x)
    U_q_dx=1.5*U_m*np.cos(x+1/2*np.pi)
    U_q_dy=1.5*U_m*np.sin(x+1/2*np.pi)

    line_l_U_A_2_U_B_start_x    = line_l_U_A_end_x
    line_l_U_A_2_U_B_start_y    = line_l_U_A_end_y
    line_l_U_A_2_U_B_end_dx     = line_l_U_B_end_x #+ 0.2 #line_l_U_B_end_x#-line_l_U_B_start_x
    line_l_U_A_2_U_B_end_dy     = line_l_U_B_end_y #+ 0.2 #line_l_U_B_end_y#-line_l_U_B_start_y
    line_l_U_B_2_U_C_start_x    = line_l_U_A_2_U_B_start_x+line_l_U_A_2_U_B_end_dx
    line_l_U_B_2_U_C_start_y    = line_l_U_A_2_U_B_start_y+line_l_U_A_2_U_B_end_dy
    line_l_U_B_2_U_C_end_dx     = line_l_U_C_end_x #+ line_l_U_C_end_x#-line_l_U_C_start_x
    line_l_U_B_2_U_C_end_dy     = line_l_U_C_end_y #+ line_l_U_C_end_y#-line_l_U_C_start_y

    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_A      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_C      = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    ## Plot US and vector
    line_l_U_A_2_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_A_2_U_B_start_x,line_l_U_A_2_U_B_start_y,line_l_U_A_2_U_B_end_dx,line_l_U_A_2_U_B_end_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B_2_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_B_2_U_C_start_x,line_l_U_B_2_U_C_start_y,line_l_U_B_2_U_C_end_dx,line_l_U_B_2_U_C_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    ## Plot US and U_alpha U_beta
    U_alpha_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,U_alpha_dx,U_alpha_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    U_beta_axes       = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,U_beta_dx,U_beta_dy, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    # ## Plot US and U_d U_q
    U_d_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,U_d_dx,U_d_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    U_q_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,U_q_dx,U_q_dy, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_A = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear

    # line_m = ax_u_m.add_patch(plt.Arrow(0,0,U_m*np.cos(x),U_m*np.sin(x), width = 0.1))#, color = 'r' # works good except the arror cannot disapear

    # line = ax_u_l.arrow(0,0,np.cos(i),np.sin(i), head_width = 0.05,  
    #      head_length = 0.1) # works good except the arror cannot disapear, width = 0.1, color = 'r'
    # U_A.set_data(x, U_m*2/3*np.cos(x))
    # # U_A.set_data(x, pos[:,0])
    # U_B.set_data(x, U_m*2/3*np.cos(x-2/3*np.pi))
    # U_C.set_data(x, U_m*2/3*np.cos(x+2/3*np.pi))
    # U_SVPWM.set_data(x, U_m*np.cos(2*x))
    # U_A=np.sin(x)
    # U_B=np.cos(x)
    # U_A.set_data(x, U_A)
    # U_B.set_data(x, U_B)
    # con.xy1 = pos
    # con.xy2 = i, pos[1]
    return line_l,line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)#,init_func=init
# plt.ion()
plt.show()

```


```python

```


```python
3*np.sqrt(3)/np.pi
sector[1]
```




    5




```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
R = 0.6
T = 2 # secs
frames = T*25
interval = 40
omega = 2*np.pi/T
# theta = np.linspace(0, 2*np.pi, 13)
# # center= np.zeros((13,2))
# x = np.cos(theta)
# plt(np.cos(x), np.sin(x), "k", lw=0.3)
def position(time=0):
    x = R*np.cos(time)
    y = R*np.sin(time)
    return {'x' : x, 'y' : y}

# def velocity(time=0,R=0.1):
#     x = -R*omega*np.sin(omega*time)**2*3
#     y = R*omega*np.cos(omega*time)**2*3
#     return {'x' : x, 'y' : y}

# def acceleration(time=0,R=0.05):
#     x = -R*(omega**2)*np.cos(omega*time)*6
#     y = -R*(omega**2)*np.sin(omega*time)*6
#     return {'x' : x, 'y' : y}

def init():
    # line.set_data([], [])
    theObject.set_data([], [])
    time_text.set_text('')
    return  theObject, time_text#line,
def animate(time):
    time /= (frames/T)
    # thisx = [0, position(time)['x'], velocity(time)['x'], acceleration(time)['x']]
    # thisy = [0, position(time)['y'], velocity(time)['y'], acceleration(time)['y']]
    # line.set_data(thisx[:2], thisy[:2])
    # theObject.set_data(thisx[1], thisy[1])
    time_text.set_text(time_template % (time))
    # ax.patches.pop(0)
    # ax.patches.pop(0)
    U_S = ax.add_patch(plt.Arrow(0,0,np.cos(time),np.sin(time), width = 0.1, color = 'r'))
    # accel = ax.add_patch(plt.Arrow(thisx[1],thisy[1],thisx[3],thisy[3], width = 0.1, color = 'b'))
    return  theObject, U_S, time_text#, accel  line,  


# First set up the figure, the axis, and the plot element we want to animate
fig, ax = plt.subplots(figsize = (8.0,8.0))
x = np.linspace(0, 2 * np.pi, 50)
# center= np.zeros((13,2))
# x = np.cos(theta)
ax.plot(np.cos(x), np.sin(x), "k", lw=0.3)

ax.set_xlim(( -R*2, R*2))
ax.set_ylim((( -R*2, R*2)))
ax.set_aspect('equal')
ax.grid()
time_template = 'time = %.1fs'
time_text = ax.text(0.05, 0.9, '', transform=ax.transAxes, fontsize = 14)  
time_text.set_text(time_template % (0))
# line, = ax.plot([0, position(0)['x']], [0, position(0)['y']],'k--')
origin, = ax.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
theObject, = ax.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# theObject, = ax.plot([position(0)['x']], [position(0)['x']], marker = 'o', markersize = 1000, markerfacecolor = 'b')
# U_S = ax.add_patch(plt.Arrow(position(0)['x'], position(0)['y'],  velocity(0)['x'], velocity(0)['y'], width = 0.1, color = 'r'))
U_S = ax.add_patch(plt.Arrow([0], [0],  [0], [0], width = 0.01, color = 'r'))
# accel    = ax.add_patch(plt.Arrow(position(0)['x'], position(0)['y'],  acceleration(0)['x'], acceleration(0)['y'], width = 0.1, color = 'b'))


anim = animation.FuncAnimation(fig, animate, init_func=init, interval = interval, blit=True)#, frames = 1000
plt.show()
```


```python
"""
General Numerical Solver for the 1D Time-Dependent Schrodinger's equation.

adapted from code at http://matplotlib.sourceforge.net/examples/animation/double_pendulum_animated.py

Double pendulum formula translated from the C code at
http://www.physics.usyd.edu.au/~wheat/dpend_html/solve_dpend.c

author: Jake Vanderplas
email: vanderplas@astro.washington.edu
website: http://jakevdp.github.com
license: BSD
Please feel free to use and modify this, but keep the above information. Thanks!
"""

from numpy import sin, cos
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as integrate
import matplotlib.animation as animation
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first

def position(time=0):
    x = np.cos(time)
    y = np.sin(time)
    return {'x' : x, 'y' : y}
    
U_dc=12 #Voltage
fig, (axl, axr) = plt.subplots(
    ncols=2,
    sharey=True,
    # figsize=(6, 2),
    figsize=(12, 4),
    gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
## Set left Axes
axl.set_aspect(1)
## Set Right Axes
axr.set_box_aspect(1 / 3)
## Plot left Axes
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
# print('x',x)
# print('x[3::2]_before',x[3::2])
x[1::2] *= 0.5
# print('x[3::2]_after',x[3::2])

y = np.sin(theta)
y_1 = np.sin(theta_1)
# print('y',y)
# print('y[1::2]_before',y[1::2])
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
# print('y[1::2]_after',y[1::2])
axl.plot(x[::2], y[::2], color='r')
axl.plot(center[:,0], center[:,1], color='r')
axl.plot(x_1, y_1, color='r')
# draw circle with initial point in left Axes
x = np.linspace(0, 2 * np.pi, 50)
axl.plot(np.cos(x), np.sin(x), "k", lw=0.3)
# point, = axl.plot(0, 0, "o")

## Plot Right Axes
axr.yaxis.set_visible(False)
axr.xaxis.set_ticks([0, np.pi/3, 2*np.pi/3, np.pi, 4*np.pi/3, 5*np.pi/3, 2*np.pi], 
                    ["0", r"$\pi$/3", r"2*$\pi$/3", r"$\pi$", r"4*$\pi$/3", r"5*$\pi$/3", r"$2\pi$"])

# line,=   axl.plot([[],[]], "o")
# line, = axl.plot([],[])
# line,  = axl.add_patch(plt.Arrow(0, 0,  1, 0, width = 0.1, color = 'r'))
# line = axl.add_patch(plt.Arrow(position(0)['x'], position(0)['y'],  position(0)['x'], position(0)['y'], width = 0.1, color = 'r'))# works good except the arror cannot disapear
line = axl.add_patch(plt.Arrow([0], [0],  [1],[0], width = 0.1, color = 'r'))#
# draw full curve to set view limits in right Axes
U_A=np.sin(x)
U_B=np.cos(x)
U_C=np.cos(x)
U_SVPWM=np.cos(x)
# U_C=
# U_SVPWM=
U_A,= axr.plot(x, U_A)
U_B,= axr.plot(x, U_B)
U_C,= axr.plot(x, U_C)
U_SVPWM,=axr.plot(x, U_SVPWM)
axr.grid()

dt = 1./30 # 30 fps

#------------------------------------------------------------
# set up figure and animation
# fig = plt.figure()
# ax = fig.add_subplot(111, aspect='equal', autoscale_on=False,
#                      xlim=(-2, 2), ylim=(-2, 2))
# ax.grid()

# line, = ax.plot([], [], 'o-', lw=2)
# time_text = ax.text(0.02, 0.95, '', transform=ax.transAxes)
# energy_text = ax.text(0.02, 0.90, '', transform=ax.transAxes)

def init():
    # """initialize animation"""
    # line.set_data([], [])
    # time_text.set_text('')
    # energy_text.set_text('')
    # return line, time_text, energy_text
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM

def animate(i):
    # """perform animation step"""
    # global pendulum, dt
    # pendulum.step(dt)
    
    # line.set_data(*pendulum.position())
    # time_text.set_text('time = %.1f' % pendulum.time_elapsed)
    # energy_text.set_text('energy = %.3f J' % pendulum.energy())
    # return line, time_text, energy_text
    x = np.linspace(0, i, int(i * 25 / np.pi))
    line = axl.add_patch(plt.Arrow(0,0,np.cos(i),np.sin(i), width = 0.1, color = 'r')) # works good except the arror cannot disapear
    U_A.set_data(x, np.sin(x))
    U_B.set_data(x, np.cos(x))
    U_C.set_data(x, np.sin(2*x))
    U_SVPWM.set_data(x, np.cos(2*x))
    # U_A=np.sin(x)
    # U_B=np.cos(x)
    # U_A.set_data(x, U_A)
    # U_B.set_data(x, U_B)
    # con.xy1 = pos
    # con.xy2 = i, pos[1]
    return line, U_A, U_B, U_C, U_SVPWM#, con#point

# choose the interval based on dt and the time to animate one step
from time import time
t0 = time()
animate(0)
t1 = time()
interval = 1000 * dt - (t1 - t0)

ani = animation.FuncAnimation(fig, animate, frames=300,
                              interval=interval, blit=True, init_func=init)

# save the animation as an mp4.  This requires ffmpeg or mencoder to be
# installed.  The extra_args ensure that the x264 codec is used, so that
# the video can be embedded in html5.  You may need to adjust this for
# your system: for more information, see
# http://matplotlib.sourceforge.net/api/animation_api.html
#ani.save('double_pendulum.mp4', fps=30, extra_args=['-vcodec', 'libx264'])

plt.show()
```


```python
import numpy as np
import matplotlib.pyplot as plt
# From 0~2pi, collect 13 point 0 pi/6 pi/3 pi/3
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
# print('x',x)
# print('x[3::2]_before',x[3::2])
x[1::2] *= 0.5
# print('x[3::2]_after',x[3::2])

y = np.sin(theta)
y_1 = np.sin(theta_1)
# print('y',y)
# print('y[1::2]_before',y[1::2])
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
# print('y[1::2]_after',y[1::2])
plt.plot(x[::2], y[::2], color='r')
plt.plot(center[:,0], center[:,1], color='r')
plt.plot(x_1, y_1, color='r')
# plt.plot(x[::2], y[::2], color='r')
# plt.plot((center[::2],center[::2]), (x[::2],y[::2]), color='r')
# plt.plot((center[::2],y[::2]), color='r')
# plt.axline((center[::2],center[::2]), (x[::2],y[::2]), color='k')
# plt.axhline(y=0,Is="-",c="yellow")
# print('x[::2]',x[::2])
# print('y[::2]',y[::2])
# plt.plot(x, y, color='c')
plt.axis('equal')
plt.grid()
plt.show()
# x[1::2]

```

## 如何深入理解SVPWM？
https://zhuanlan.zhihu.com/p/47766452

$y(t)=\frac{2}{\sqrt{3}}[sin(t+\frac{\pi}{2})+\frac{1}{6}sin(3(t+\frac{\pi}{2}))]$  
$y(t)=\frac{2}{\sqrt{3}}[cos(t)-\frac{1}{6}cos(3t)]$



```python
import numpy as np
import matplotlib.pyplot as plt
# From 0~2pi, collect 13 point 0 pi/6 pi/3 pi/3
theta = np.arange(0, 4*np.pi, 0.01)
cos_1=np.cos(theta)
cos_3=-1/6*np.cos(3*theta)
svpwm=2/np.sqrt(3)*(cos_1+cos_3)
plt.plot(cos_1,label=r'$cos(\theta)$')
plt.plot(cos_3,label=r'$-\frac{1}{6}cos(3\theta)$')
plt.plot(svpwm,label=r'$\frac{2}{\sqrt{3}}[cos(\theta)-\frac{1}{6}cos(3\theta)]$')
# theta = np.linspace(0, 2*np.pi, 13)
plt.legend()
plt.grid()
plt.show()

```


```python
import numpy as np
import matplotlib.pyplot as plt
# From 0~2pi, collect 13 point 0 pi/6 pi/3 pi/3
theta = np.arange(0, 4*np.pi, 0.01)
Vm=1
Vdc=20
Van=Vm*np.cos(theta)
Vbn=Vm*np.cos(theta-2*np.pi/3)
Vcn=Vm*np.cos(theta-4*np.pi/3)

fig, (ax1,ax2,ax3,ax4) = plt.subplots(
    nrows=4,
    # sharey=True,
    # # figsize=(6, 2),
    # figsize=(12, 4),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
# Vcm=1/2*(V_max+V_min)
# for theta_temp in theta
#     V_max=max(Van[theta_temp])

# Van_module=np.sqrt(3)/(2*Vdc)*(Van-Vcm)
ax1.plot(Van,label=r'$Vm*cos(\theta)$')
ax1.plot(Vbn,label=r'$Vm*cos(\theta-2*\pi/3)$')
ax1.plot(Vcn,label=r'$Vm*cos(\theta-4*\pi/3)$')
V_max=np.maximum(Van,Vbn,Vcn)
V_min=np.minimum(Van,Vbn,Vcn)

ax2.plot(V_max,label=r'max(Van,Vbn,Vcn)')
# ax2.plot(V_min,label=r'min(Van,Vbn,Vcn)')
# theta = np.linspace(0, 2*np.pi, 13)
# plt.legend()
# plt.grid()
plt.show()
```


```python
# for theta_temp in np.arange(0,len(theta),1):
#     V_max[theta_temp]=np.maximum(Van[theta_temp],Vbn[theta_temp],Vcn[theta_temp])
# V_max
np.maximum(Van,Vbn,Vcn)
```




    array([10.        ,  9.9995    ,  9.99800007, ...,  9.99652315,
            9.99866004,  9.99979708])


