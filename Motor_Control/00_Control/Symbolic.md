```python
import sympy
from sympy import *
import math
import numpy as np
# amplitude=1
# freq=1/(2*np.pi)
U_An,U_Bn,U_Cn,U_Vector,t=sympy.symbols('U_An U_Bn U_Cn U_Vector t')
amplitude,freq=sympy.symbols('amplitude freq')
U_An=amplitude*cos(2*pi*freq*t)#+amplitude#2*np.pi*freq*
U_Bn=amplitude*cos(2*pi*freq*t+2*pi/3)#+amplitude
U_Cn=amplitude*cos(2*pi*freq*t-2*pi/3)#+amplitude
# U_Vector=U_An+U_Bn*exp(complex(0,2*pi/3))+U_Cn*exp(complex(0,-2*pi/3))
U_Vector=U_An+U_Bn*exp(I*2*pi/3)+U_Cn*exp(-I*2*pi/3)
# print(U_An)
# print(U_Bn)
# print(U_Cn)
# simplify(U_Cn)
simplify(U_Vector)
# print(simplify(U_Vector))
# U_An=cos(t)#+amplitude#2*np.pi*freq*
# U_Bn=amplitude*np.cos(2*np.pi*freq*t+2*np.pi/3)#+amplitude
# U_Cn=amplitude*np.cos(2*np.pi*freq*t-2*np.pi/3)#+amplitude
# U_Vector=U_An+U_Bn*np.exp(complex(0,2*np.pi/3))+U_Bn*np.exp(complex(0,-2*np.pi/3))

```




$\displaystyle amplitude \left(- \left(-1\right)^{\frac{2}{3}} \sin{\left(\pi \left(2 freq t + \frac{1}{6}\right) \right)} + \sqrt[3]{-1} \cos{\left(\pi \left(2 freq t + \frac{1}{3}\right) \right)} + \cos{\left(2 \pi freq t \right)}\right)$




```python
import sympy
from sympy import *
exp(I*pi)
# eqn1=sympy.exp(sympy.I * 2*sympy.pi) + 1
# print(eqn1)
```




$\displaystyle -1$




