  
# ***Luenberger Observer***

## Luenbeger Based Methods

<img src=./Observer_Luenberger.png width=\500\ height =\450\>

## Solution 1

$\dot{x}=A*x+B*u$  
$y=C*x+D*u$  
$\dot{\hat{x}}=A*\hat{x}+B*u+L(y-\hat{y})$  
$\hat{y}=C*\hat{x}+D*u$  

$
\begin{aligned}
    \dot{e}&=\dot{x}-\dot{\hat{x}} \\
        &=A*x+B*u-A*\hat{x}-B*u-L(y-\hat{y}) \\
        &=A*(x-\hat{x})-L(C*x+D*u-C*\hat{x}-D*u) \\
        &=A*(x-\hat{x})-L*C(x-\hat{x}) \\
        &=(A-L*C)(x-\hat{x}) \\
        &=(A-L*C)*e \\
\end{aligned}
$

$
x(t)-\hat{x}(t)=e^{\begin{bmatrix}A-LC\end{bmatrix}}e_0
$

if we want to let $x(t)-\hat{x}(t)$ to $Zero$,the eginvalue  $[A-LC]$shall be in left side

## Solution 2
$
\dot{x}=A*x+B*u                     \\
y=C*x+D*u                           \\
\dot{\hat{x}}=A*\hat{x}+B*u         \\
\hat{y}=C*\hat{x}+D*u               \\
\dot{x}-\dot{\hat{x}}=A*(x-\hat{x}) \\
y-\hat{y}=C*(x-\hat{x})             \\
\dot{e}=A*e                         \\
y-\hat{y}=C*e                       \\
$
**Use output error as negative feedback to make e close to zero with time increase**

$
\begin{aligned}
\dot{e}
        &=A*e-L(y-\hat{y})  \\
        &=A*e-L*C*e         \\
        &=(A-L*C)e          \\
\end{aligned}
$

To make the e limit to $zero$,eigvalue of $A-L*C$ shall have all negative

## Motor Model


### Transfer function（$\alpha \beta$）

$
U_{\alpha}=R_si_\alpha +L_s\frac{di_{\alpha}}{dt} +e_{\alpha}   \\
U_{\beta} =R_si_{\beta}+L_s\frac{di_{\beta}}{dt}  +e_{\beta  }  \\
e_{\alpha} =U_{\alpha}-R_si_\alpha -L_s\frac{di_{\alpha}}{dt}   \\
e_{\beta  }=U_{\beta} -R_si_{\beta}-L_s\frac{di_{\beta}}{dt}    \\
$



$
L_s\frac{di_{\alpha}}{dt}=U_{\alpha} - R_si_\alpha-e_{\alpha } \\
L_s\frac{di_{\beta}}{dt} =U_{\beta}  - R_si_\beta-e_{\beta  } \\
$

$
L_s\frac{di_{\alpha}}{dt}+R_si_\alpha=U_{\alpha}-e_{\alpha } \\
L_s\frac{di_{\beta}}{dt}+R_si_{\beta}=U_{\beta}-e_{\beta  } \\
$

$
L_s\frac{d\hat{i}_{\alpha}}{dt}+R_s\hat{i}_\alpha=U_{\alpha}-\hat{e}_{\alpha } \\
L_s\frac{d\hat{i}_{\beta}}{dt}+R_s\hat{i}_{\beta}=U_{\beta}-\hat{e}_{\beta  } \\
$
$
L_s\frac{d\hat{i}_{\alpha}}{dt}=U_{\alpha}-R_s\hat{i}_\alpha -\hat{e}_{\alpha } \\
L_s\frac{d\hat{i}_{\beta}}{dt} =U_{\beta}-R_s\hat{i}_{\beta}-\hat{e}_{\beta  } \\
$

$
L_s\frac{di_{\alpha}}{dt}+R_si_\alpha-L_s\frac{d\hat{i_{\alpha}}}{dt}-R_s\hat{i_\alpha}=U_{\alpha}-e_{\alpha }-U_{\alpha}+\hat{e_{\alpha }} \\
L_s\frac{di_{\beta}}{dt}+R_si_{\beta}-L_s\frac{d\hat{i_{\beta}}}{dt}-R_s\hat{i_{\beta}}=U_{\beta}-e_{\beta  }-U_{\beta}+\hat{e_{\beta  }} \\
$

$
L_s(\frac{di_{\alpha}}{dt}-\frac{d\hat{i_{\alpha}}}{dt})+R_s(i_\alpha-\hat{i_\alpha})=-e_{\alpha }+\hat{e_{\alpha }} \\
L_s(\frac{di_{\beta}}{dt}-\frac{d\hat{i_{\beta}}}{dt})+R_s(i_{\beta}-\hat{i_{\beta}})=-e_{\beta  }+\hat{e_{\beta  }} \\
$

$
L_s(\frac{di_{\alpha}}{dt}-\frac{d\hat{i_{\alpha}}}{dt})+R_s(i_\alpha-\hat{i_\alpha})=-e_{\alpha }+L(i_\alpha-\hat{i_\alpha}) \\
L_s(\frac{di_{\beta}}{dt}-\frac{d\hat{i_{\beta}}}{dt})+R_s(i_{\beta}-\hat{i_{\beta}})=-e_{\beta  }+L(i_\beta-\hat{i_\beta}) \\
$

$
L_s(\frac{di_{\alpha}}{dt}-\frac{d\hat{i_{\alpha}}}{dt})+(R_s-L)(i_\alpha-\hat{i_\alpha})=-e_{\alpha }\\
L_s(\frac{di_{\beta}}{dt}-\frac{d\hat{i_{\beta}}}{dt})+(R_s-L)(i_{\beta}-\hat{i_{\beta}})=-e_{\beta  } \\
$

$
E_\alpha=i_\alpha-\hat{i_\alpha}\\
E_\beta=i_\beta-\hat{i_\beta}\\
$
$
L_s\dot{E_\alpha}+(R_s-L)E_\alpha=-e_{\alpha }\\
L_s\dot{E_\beta} +(R_s-L)E_\beta=-e_{\beta  } \\
$  
at steady state,$e_\alpha$ is a constant, laplace at 2 side  
$Tf_L=K_p+K_d s$
$
L_s s+(R_s-(K_p+K_d s))=0\\
$
$(L_s-K_d)s+R_s-K_p=0$

$Root=\frac{K_p-R_s}{L_s-K_d}<0$  
OK,we can set the Luenberger observer parameter $K_p=R_s$ and $K_d=L_s$, but how to set the value of $K_p K_d$ is a questions? Shall be simulink in model and test in dyno bench.

### Transfer function （$D Q$）

$
U_{d}=R_si_d +\frac{d\psi_{d}}{dt} -\omega\psi_{q}   \\
U_{q}=R_si_q +\frac{d\psi_{q}}{dt} +\omega\psi_{d}   \\
$  
$
\psi_{d}=L_d{i_{d}} +\psi_m  \\
\psi_{q}=L_q{i_{q}}          \\
$  
$
U_{d}=R_si_d +L_d\frac{di_{d}}{dt} -\omega*L_qI_q   \\
U_{q}=R_si_q +L_q\frac{di_{q}}{dt} +\omega*L_dI_d+\omega*\psi I_d  \\
$

****************************************************************************************
****************************************************************************************
$
U_{d}=R_si_d +L_s\frac{di_{d}}{dt} -\omega*L_qI_q   \\
U_{q}=R_si_q +L_s\frac{di_{q}}{dt} +\omega*L_dI_d+\omega*\psi I_d  \\
$



$U_d=(R+sL_d)I_d-\omega*L_qI_q$  
$U_q=(R+sL_q)I_q+\omega*L_dI_d+\omega*\psi I_d$  


$U_d=(R+sL_d)I_d-\omega*L_qI_q+e_d$  
$U_q=(R+sL_q)I_q+\omega*L_dI_d+e_q$  
$e_d=e*sin(\Delta\theta)$  
$e_q=e*cos(\Delta\theta)$  
$e=\omega*\psi I_d$  


$U_d=(R+sL_d)I_d-\omega*L_qI_q+e_d$  
$U_q=(R+sL_q)I_q+\omega*L_dI_d+e_q$  
Set $d_d d_q$ as voltage disturbance  
$d_d=\omega*L_qI_q-e_d$  
$d_q=-\omega*L_dI_d-e_q$  
$U_d=(R+sL_d)I_d-d_d$  
$U_q=(R+sL_q)I_q-d_q$   


$s I_d=\frac{U_d}{L_d}-\frac{R}{L_d}I_d+\frac{d_d}{L_d}$  
$s I_q=\frac{U_q}{L_q}-\frac{R}{L_q}I_q+\frac{d_q}{L_q}$  


$s \hat{I_d}=-\frac{R}{L_d}\hat{I_d}+\frac{U_d}{L_d}+\frac{\hat{d_d}}{L_d}+K_1(I_d-\hat{I_d})$   
$s\hat{d}=K_2(I_d-\hat{I_d})$  
$s I_q=-\frac{R}{L_q}I_q+\frac{U_q}{L_q}+\frac{\hat{d_q}}{L_q}+K_1(I_d-\hat{I_d})$  
$s\hat{q}=K_2(I_q-\hat{I_q})$  


$s \hat{I_d}=-\frac{R}{L_d}\hat{I_d}+\frac{U_d}{L_d}+\frac{\hat{d_d}}{L_d}+K_1(I_d-\hat{I_d})$   
$s\hat{d}=K_2(I_d-\hat{I_d})$  


$(s+K_1+ \frac{R}{L_d})\hat{I_d}=\frac{U_d}{L_d}+\frac{\hat{d_d}}{L_d}+K_1I_d$   
$\hat{d}=\frac{K_2(I_d-\hat{I_d})}{s}$  


$(s+K_1+ \frac{R}{L_d})\hat{I_d}=\frac{U_d}{L_d}+\frac{K_2(I_d-\hat{I_d})}{s L_d}+K_1I_d$   
$\hat{d}=\frac{K_2(I_d-\hat{I_d})}{s}$  


$(s+K_1+ \frac{R}{L_d}+\frac{K_2}{s L_d})\hat{I_d}=\frac{U_d}{L_d}+\frac{K_2I_d}{s L_d}+K_1I_d$   
$\hat{d_d}=\frac{K_2(I_d-\hat{I_d})}{s}$  


$(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})\hat{I_d}=s(\frac{U_d}{L_d}+K_1I_d)+\frac{K_2I_d}{L_d}$   
$\hat{I_d}=\frac{s(\frac{U_d}{L_d}+K_1I_d)+\frac{K_2I_d}{L_d}}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}$



$\hat{I_d}=\frac{1}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}\{s(\frac{U_d}{L_d}+K_1I_d)+\frac{K_2I_d}{L_d}\}$


$\hat{I_d}=\frac{\frac{K_2}{L_d}}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}\{\frac{s}{K_2}U_d+(1+\frac{K_1}{K_2}L_ds)I_d\}$


$\hat{I_d}=\frac{\frac{K_2}{L_d}}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}\{(1+\frac{K_1}{K_2}L_ds)I_d+\frac{s}{K_2}U_d\}$


$\hat{d_d}=\frac{\frac{K_2}{L_d}}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}\{(L_ds+R)I_d-U_d\}$  


$\omega_n=\sqrt{\frac{K_2}{L_d}}$  
$\zeta=\frac{\frac{R}{L_d}+K_1}{2\sqrt{\frac{K_2}{L_d}}}$


$K_1=2*\zeta_{EG}\omega_{EG}-\frac{R}{L_d}$  
$K_2=\omega_{EG}^2L_d$


$\hat{I_d}=\frac{1}{s}\{-\frac{R}{L_d}\hat{I_d}+\frac{\hat{d_d}}{L_d}+\frac{U_d}{L_d}+K_1(I_d-\hat{I_d})\}$  
$\hat{d_d}=\frac{1}{s}\{K_2(I_d-\hat{I_d})\}$


$\omega_{𝐸𝐺}$ : Desired natural frequency of BEMF estimation system  
$\zeta_{𝐸𝐺}$ : Desired damping ratio of BEMF estimation system


$\hat{d_d}=\frac{K_2(I_d-\hat{I_d})}{s}$  
$\hat{d_d}=\frac{K_2(I_d-\frac{\frac{K_2}{L_d}}{(s^2 +s (K_1 + \frac{R}{L_d})+\frac{K_2}{L_d})}\{(1+\frac{K_1}{K_2}L_ds)I_d+\frac{s}{K_2}U_d\})}{s}$ 


$\hat{d_d}=\frac{K_2(I_d-\hat{I_d})}{s}$  


### State states

<img src=./Observer_Luenberger_2.png width=\500\ height =\550\>

$\dot{x}=A*x+B*u$\
$y=C*x+D*u$

$\dot{\hat{x}}=A*\hat{x}+B*u+L(y-\hat{y})$\
$\hat{y}=C*\hat{x}+D*u$


$
L_s\frac{di_{\alpha}}{dt}+R_si_\alpha=U_{\alpha}-e_{\alpha } \\
L_s\frac{di_{\beta}}{dt}+R_si_{\beta}=U_{\beta}-e_{\beta  } \\
\frac{de_{\alpha }}{dt}=-\omega_e e_{\beta  }\\
\frac{de_{\beta }}{dt}=\omega_e e_{\alpha  }\\
$


$
\frac{di_{\alpha}}{dt}=-\frac{R_s}{L_s}i_\alpha+\frac{1}{L_s}U_{\alpha}-\frac{1}{L_s}e_{\alpha } \\
\frac{di_{\beta}}{dt}=-\frac{R_s}{L_s}i_{\beta}+\frac{1}{L_s}U_{\beta}-\frac{1}{L_s}e_{\beta  } \\
\frac{de_{\alpha }}{dt}=-\omega_e e_{\beta  }\\
\frac{de_{\beta }}{dt}=\omega_e e_{\alpha  }\\
$


$\begin{bmatrix}
\frac{di_{\alpha}}{dt} \\
\frac{di_{\beta}}{dt}\\
\frac{de_{\alpha }}{dt}\\
\frac{de_{\beta }}{dt}\\
\end{bmatrix}=
\begin{bmatrix}
-\frac{R_s}{L_s}    &0                  &-\frac{1}{L_s} &0\\
0                   &-\frac{R_s}{L_s}   &0              &-\frac{1}{L_s}\\
0                   &0                  &0              &-\omega_e\\
0                   &0                  &\omega_e       &0
\end{bmatrix}*
\begin{bmatrix}
i_\alpha\\
i_{\beta}\\
e_{\alpha }\\
e_{\beta }
\end{bmatrix}+
\begin{bmatrix}
\frac{1}{L_s}   &   0\\
0               &   \frac{1}{L_s}\\
0               &0\\
0               &0
\end{bmatrix}*
\begin{bmatrix}
U_{\alpha}\\
U_{\beta}
\end{bmatrix}\\$

$
e_{\alpha }=-\omega_e e_{\beta  }\\
e_{\beta  }=\omega_e e_{\alpha  } \\
$


$x=
\begin{bmatrix}
i_\alpha\\
i_{\beta}\\
e_{\alpha }\\
e_{\beta }
\end{bmatrix}\\$


$A=
\begin{bmatrix}
-\frac{R_s}{L_s}    &0                  &-\frac{1}{L_s} &0\\
0                   &-\frac{R_s}{L_s}   &0              &-\frac{1}{L_s}\\
0                   &0                  &0              &-\omega_e\\
0                   &0                  &\omega_e       &0
\end{bmatrix}\\$


$B=
\begin{bmatrix}
\frac{1}{L_s}   &   0\\
0               &   \frac{1}{L_s}\\
0               &0\\
0               &0
\end{bmatrix}\\$


$u=
\begin{bmatrix}
U_{\alpha}\\
U_{\beta}
\end{bmatrix}\\$


$C=
\begin{bmatrix}
0 &0 &1 &0\\
0 &0 &0 &1\\
0 &0 &0 &0\\
0 &0 &0 &0
\end{bmatrix}\\$

$
\frac{di_{\alpha}}{dt}=-\frac{R_s}{L_s}i_\alpha+\frac{1}{L_s}U_{\alpha}-\frac{1}{L_s}e_{\alpha } \\
\frac{di_{\beta}}{dt}=-\frac{R_s}{L_s}i_{\beta}+\frac{1}{L_s}U_{\beta}-\frac{1}{L_s}e_{\beta  } \\
\frac{de_{\alpha }}{dt}=-\omega_e e_{\beta  }\\
\frac{de_{\beta }}{dt}=\omega_e e_{\alpha  }\\
$  
Calcualte egeigenvalue of $A-LC$
### Luenberger Observer

$
T_{LO}=L(\frac{\Delta I}{\hat{e}})=K_p+K_ds\\
$

