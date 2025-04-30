## Sliding Mode Observer
### These equations describe the discrete-time operation of a PMSM:
$
\begin{array}{l}
\left.i_{\alpha \beta(k+1)}=A i_{\alpha \beta(k)}+B v_{\alpha \beta(k)}-B e_{\alpha \beta(k)}\right. \\
e_{\alpha \beta(k+1)}=e_{\alpha \beta(k)}+T_{s}\left(\omega_{e(k)} J e_{\alpha \beta(k)}\right. \\
J=\left[\begin{array}{cc}
0 & -1 \\
1 & 0
\end{array}\right] \\
\Phi=\left[\begin{array}{cc}
-\frac{R}{L} & 0 \\
0 & -\frac{R}{L}
\end{array}\right] \\
A=e^{\Phi T_{s}} \\
B=\int_{0}^{T_{s}} e^{\Phi} \tau d \tau=\left[\begin{array}{ll}
b & 0 \\
0 & b
\end{array}\right] \\
b=\frac{1-e^{-R T_{s} / L}}{R}
\end{array}
$
### These equations describe the discrete-time sliding mode observer operation of a surface mount PMSM:
$
\begin{array}{l}
\hat{i}_{\alpha \beta(k+1)}=A \hat{i}_{\alpha \beta(k)}+B v_{\alpha \beta(k)}-B \hat{e}_{\alpha \beta(k)}-\eta \operatorname{Sign}\left(\tilde{i}_{\alpha \beta(k)}\right) \\
\hat{e}_{\alpha \beta(k+1)}=\hat{e}_{\alpha \beta(k)}+B^{-1} g\left(\tilde{i}_{\alpha \beta(k)}-A \tilde{i}_{\alpha \beta(k-1)}+\eta \operatorname{Sign}\left(\tilde{i}_{\alpha \beta(k-1)}\right)\right) \\
\tilde{i}_{\alpha \beta(k)}=\hat{i}_{\alpha \beta(k)}-i_{\alpha \beta(k)} \\
\tilde{e}_{\alpha \beta(k)}=\hat{e}_{\alpha \beta(k)}-e_{\alpha \beta(k)} 
\end{array}
$

If the back EMF observer fulfils the conditions  $\left|e_{\alpha \beta(k+1)}-e_{\alpha \beta(k)}\right| \leq m $ and  $g \in(0,1)$ , there exists a $ K_{0}$, such that:\
$\tilde{e}_{\alpha \beta(k)} \leq \frac{m}{g} $ \
If the sliding mode observer fulfils these conditions:
- $g \in(0,1)$
- $\left|e_{\alpha \beta(k+1)}-e_{\alpha \beta(k)}\right| \leq m $
- $\eta>b \frac{m}{g} $ <br>
then there exists a $k=k_{0}$, such that for $k \geqslant k_{0}$ 
$\left|\tilde{i}_{\alpha \beta(k)}\right| \leq\eta+b \frac{m}{g} $ 

where:
* $e_{\alpha}$ and $i_{\alpha}$ are the stator back EMF and current for the $\alpha$ axis
* $e_{\beta}$ and $i_{\beta}$ are the stator back EMF and current for the $\beta$ axis
* $\tilde{e}_{\alpha}$ and $\tilde{i}_{\alpha}$ are the errors in the stator back EMF and current for the $\alpha$ axis
* $\tilde{e}_{\beta}$ and $\tilde{i}_{\beta}$ are the errors in the stator back EMF and current for the $\beta$ axis
* $V_{\alpha}$ and $V_{\beta}$ are the stator supply voltages
* $R$ is the stator resistance
* $L$ is the stator inductance
* $g$ is the back EMF observer gain
* $\eta$ is the current observer gain
* $\omega_{e}$ is the electrical angular velocity
* $T_{s}$ is the sampling period
* $k$ is the sample count
### Tuning
Use these steps to tune the block using the Current observer gain $\eta$ and Back-emf observer gain ($g$) parameters.

* Select a back-emf observer gain ($g$) value such that $g \in(0,1)$. Bringing g close to the value 1, results in less error in the estimated back-emf. However, this makes convergence slow.

* Select a value of $m$ based on the block sample time and maximum slope of the operating back-emf (such that $\left|e_{\alpha \beta(k+1)}-e_{\alpha \beta(k)}\right| \leq m $)

* Select a current observer gain ($\eta$) value based on $b$, $m$, and $g$ (such that $\eta>b \frac{m}{g} $).


```python
import sympy
from sympy import *
exp(I*pi)
# eqn1=sympy.exp(sympy.I * 2*sympy.pi) + 1
# print(eqn1)
```




$\displaystyle -1$



$
B=\int_{0}^{T_{s}} e^{\Phi} \tau d \tau=\left[\begin{array}{ll}
b & 0 \\
0 & b
\end{array}\right]
$
