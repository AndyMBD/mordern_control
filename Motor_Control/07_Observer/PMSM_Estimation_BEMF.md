# PMSM Motor

From "Sensorless Field Oriented Control with Embedded Power SoC" TLE9879

## $\alpha$ $\beta$  axis





### $\alpha$ $\beta$ Flux


$
\Psi_{p}=2*N*r*l*b_p \\
$\
$
\Psi_{p\alpha }=\Psi_{p} *\cos(\omega_{e}t ) \\
\Psi_{p\beta } =\Psi_{p} *\sin(\omega_{e}t ) \\
$\
$
\Psi_{s\alpha }=L_s*I_{\alpha }+\Psi_{p\alpha } \\
\Psi_{s\beta }=L_s*I_{\beta }+\Psi_{p\beta }\\
$\
$
\Psi_{s\alpha }=L_s*I_{\alpha }+\Psi_{p} *\cos(\omega_{e}t ) \\
\Psi_{s\beta } =L_s*I_{\beta }+\Psi_{p} *\sin(\omega_{e}t ) \\
$

### $\alpha$ $\beta$ Voltage

$
U_{\alpha } =R_{s}*I_{\alpha }+\frac{\mathrm{d} \Psi_{s\alpha }}{\mathrm{d} t} \\
U_{\beta } =R_{s}*I_{\beta }+\frac{\mathrm{d} \Psi_{s\beta }}{\mathrm{d} t} \\
$\
$
U_{\alpha } =R_{s}*I_{\alpha }+L_{s}*\frac{\mathrm{d} I_{\alpha }}{\mathrm{d} t} -\Psi_{p} \omega_{e} *\sin (\omega_{e}t ) \\
U_{\beta  } =R_{s}*I_{\beta  }+L_{s}*\frac{\mathrm{d} I_{\beta  }}{\mathrm{d} t} +\Psi_{p} \omega_{e} *\cos(\omega_{e}t ) \\
$


$
e_{\alpha } = -\Psi_{p} \omega_{e} *\sin (\theta ) \\
e_{\beta  } =\Psi_{p} \omega_{e} *\cos(\theta ) \\
$\
$
U_{\alpha}=R_si_s+L_s\frac{di_{\alpha}}{dt}+e_{\alpha } \\
U_{\beta}=R_si_{\beta}+L_s\frac{di_{\beta}}{dt}+e_{\beta  } \\
$\
$
\frac{di_{\alpha}}{dt}=-\frac{R}{L}i_{\alpha}-\frac{1}{L}e_{\alpha }+\frac{1}{L}U_{\alpha} \\
\frac{di_{\beta}}{dt}=-\frac{R}{L}i_{\beta}-\frac{1}{L}e_{\beta }+\frac{1}{L}U_{\beta} \\
$

* $\Psi_{\alpha, \beta}$ --- flux linkage
* $i_{\alpha, \beta}$       ---current
* $e_{\alpha, \beta}$       ---electromotive force
* $U_{\alpha, \beta}$       --- voltage for each phase in the stator fixed reference frame
* $R$ and $L$               --- phase resistance and inductance
* $\Psi_{p} $               ---magnetic flux
* $\omega_{e} $             --- electric angular velocity
* $\theta{e} $              ---the rotor position(in electrical angle) of the PMSM


## BEMF Estimation

$
U_{\alpha}=R_si_s+L_s\frac{di_{\alpha}}{dt}+e_{\alpha } \\
U_{\beta}=R_si_{\beta}+L_s\frac{di_{\beta}}{dt}+e_{\beta  } \\
$\
$
e_{\alpha }=U_{\alpha}-R_si_s-L_s\frac{di_{\alpha}}{dt} \\
e_{\beta  }=U_{\beta}-R_si_{\beta}-L_s\frac{di_{\beta}}{dt} \\
$

$
e_{\alpha } = -\Psi_{p} \omega_{e} *\sin (\theta ) \\
e_{\beta  } =\Psi_{p} \omega_{e} *\cos(\theta ) \\
$\
$
\theta =-\arctan(\frac{e_{\alpha }}{e_{\beta}}) \\
$

## Basic Principles of Conventional Luenberger Observer(CLBG)




$
\left\{\begin{array}{l}
\dot{\hat{x}}(t)=F \hat{x}(t)+G u(t)+k(y(t)-\hat{y}(t)) \\
\hat{y}(t)=C \hat{x}(t)
\end{array}\right.
$


$
\begin{array}{l}
\left\{\begin{array}{l}
\hat{i}_{\alpha}(k+1)=\hat{i}_{\alpha}(k)-\frac{R T_{s}}{L} \hat{i}_{\alpha}(k)+k{ }_{1} T_{s}\left(i_{\alpha}(k)-\hat{i}_{\alpha}(k)\right)-\frac{T_{s}}{L} \hat{e}_{\alpha}(k)+\frac{T_{s}}{L} v_{\alpha}(k) \\
\hat{i}_{\beta}(k+1)=\hat{i}_{\beta}(k)-\frac{R T_{s}}{L} \hat{i}_{\beta}(k)+k 1_{s} T_{s}\left(i_{\beta}(k)-\hat{i}_{\beta}(k)\right)-\frac{T_{s}}{L} \hat{e}_{\beta}(k)+\frac{T_{s}}{L} v_{\beta}(k) \\
\hat{e}_{\alpha}(k+1)=\hat{e}_{\alpha}(k)+k{ }_{2} T_{s}\left(i_{\alpha}(k)-\hat{i}_{\alpha}(k)\right)-\omega_{e} T_{s} \hat{e}_{\beta}(k) \\
\hat{e}_{\beta}(k+1)=\hat{e}_{\beta}(k)+k 2^{T_{s}}\left(i_{\beta}(k)-\hat{i}_{\beta}(k)\right)+\omega_{e} T_{s} \hat{e}_{\alpha}(k)
\end{array}\right. \\
\theta_{e}=\omega_{e} t=\operatorname{arctg}\left(-\frac{\hat{e}_{\alpha}}{\hat{e}_{\beta}}\right)
\end{array}
$ 

$
\frac{di_{\alpha}}{dt}=-\frac{R}{L}*i_{\alpha}-\frac{1}{L}*e_{\alpha }+\frac{1}{L}V_{\alpha} \\
$\
$
\frac{di_{\beta}}{dt}=-\frac{R}{L}*i_{\beta}-\frac{1}{L}*e_{\beta }+\frac{1}{L}V_{\beta} \\
$\
$
\left\{\begin{array}{l}
\frac{d \hat{i}_{\alpha}}{d t}=-\frac{R \hat{i}_{\alpha}}{L}-\frac{\hat{e}_{\alpha}}{L}+\frac{v_{\alpha}}{L}+k_{1}\left(i_{\alpha}-\hat{i}_{\alpha}\right) \\
\frac{d \hat{i}_{\beta}}{d t}=-\frac{R \hat{i}_{\beta}}{L}-\frac{\hat{e}_{\beta}}{L}+\frac{v_{\beta}}{L}+k_{1}\left(i_{\beta}-\hat{i}_{\beta}\right) \\
\frac{d \hat{e}_{\alpha}}{d t}=-\omega_{e} \hat{e}_{\beta}+k_{2}\left(i_{\alpha}-\hat{i}_{\alpha}\right) \\
\frac{d \hat{e}_{\beta}}{d t}=\omega_{e} \hat{e}_{\alpha}+k_{2}\left(i_{\beta}-\hat{i}_{\beta}\right)
\end{array}\right.
$
