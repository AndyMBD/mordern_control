# PMSM Motor

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26

## $\alpha$ $\beta$  axis





### $\alpha$ $\beta$ Flux

$
\psi_{p}=2*N*r*l*b_p \\
$\
$
\psi_{p\alpha }=\psi_{p} *\cos(\omega_{e}t ) \\
\psi_{p\beta } =\psi_{p} *\sin(\omega_{e}t ) \\
$\
$
\psi_{s\alpha }=L_s*I_{\alpha }+\psi_{p\alpha } \\
\psi_{s\beta }=L_s*I_{\beta }+\psi_{p\beta }\\
$\
$
\psi_{s\alpha }=L_s*I_{\alpha }+\psi_{p} *\cos(\omega_{e}t ) \\
\psi_{s\beta } =L_s*I_{\beta }+\psi_{p} *\sin(\omega_{e}t ) \\
$

### $\alpha$ $\beta$ Voltage

$
U_{\alpha } =R_{s}*I_{\alpha }+\frac{\mathrm{d} \psi_{s\alpha }}{\mathrm{d} t} \\
U_{\beta } =R_{s}*I_{\beta }+\frac{\mathrm{d} \psi_{s\beta }}{\mathrm{d} t} \\
$\
$
U_{\alpha } =R_{s}*I_{\alpha }+L_{s}*\frac{\mathrm{d} I_{\alpha }}{\mathrm{d} t} -\psi_{p} \omega_{e} *\sin (\omega_{e}t ) \\
U_{\beta  } =R_{s}*I_{\beta  }+L_{s}*\frac{\mathrm{d} I_{\beta  }}{\mathrm{d} t} +\psi_{p} \omega_{e} *\cos(\omega_{e}t ) \\
$\
$
\theta=\omega_{e}t \\
$\
$
U_{\alpha } =R_{s}*I_{\alpha }+L_{s}*\frac{\mathrm{d} I_{\alpha }}{\mathrm{d} t} -\psi_{p} \omega_{e} *\sin (\theta ) \\
U_{\beta  } =R_{s}*I_{\beta  }+L_{s}*\frac{\mathrm{d} I_{\beta  }}{\mathrm{d} t} +\psi_{p} \omega_{e} *\cos(\theta ) \\
$


<img src="./Voltage_alpha_beta.png">

$
e_{\alpha } = -\psi_{p} \omega_{e} *\sin (\theta ) \\
e_{\beta  } =\psi_{p} \omega_{e} *\cos(\theta ) \\
$\
$
U_{\alpha}=R_si_s+L_s\frac{di_{\alpha}}{dt}+e_{\alpha } \\
U_{\beta}=R_si_{\beta}+L_s\frac{di_{\beta}}{dt}+e_{\beta  } \\
$\
$
\frac{di_{\alpha}}{dt}=-\frac{R}{L}i_{\alpha}-\frac{1}{L}e_{\alpha }+\frac{1}{L}U_{\alpha} \\
\frac{di_{\beta}}{dt}=-\frac{R}{L}i_{\beta}-\frac{1}{L}e_{\beta }+\frac{1}{L}U_{\beta} \\
$

### $\alpha$ $\beta$ Power

$
U_{\alpha}*I_{\alpha} =R_{s}*I_{\alpha }^2+L_{s}*I_{\alpha }*\frac{\mathrm{d} I_{\alpha }}{\mathrm{d} t} -I_{\alpha}*\psi_{p} \omega_{e} *\sin (\omega_{e}t ) \\
U_{\beta}*I_{\beta } =R_{s}*I_{\beta  }^2+L_{s}*I_{\beta }*\frac{\mathrm{d} I_{\beta  }}{\mathrm{d} t} +I_{\beta }*\psi_{p} \omega_{e} *\cos(\omega_{e}t ) \\
$


$
P_{el} =P_{V} +\frac{\mathrm{d} E_{mag }}{\mathrm{d} t} +P_{me} \\
P_{el} =U_{\alpha}*I_{\alpha }+U_{\beta}*I_{\beta } \\
P_{V} =R_{s}*I_{\alpha }^2+R_{s}*I_{\beta  }^2 \\
P_{me} =\omega_{e}*T=-I_{\alpha}*\psi_{p} \omega_{e} *\sin (\theta ) + I_{\beta }*\psi_{p} \omega_{e} *\cos(\theta ) \\
T =-I_{\alpha}*\psi_{p}  *\sin (\theta ) + I_{\beta }*\psi_{p}  *\cos(\theta) \\
T =-I_{\alpha}*\psi_{p\beta} + I_{\beta }*\psi_{p\alpha} \\
$


<img src="./Torque_alpha_beta.png">

* $\psi_{\alpha, \beta}$    --- flux linkage
* $i_{\alpha, \beta}$       ---current
* $e_{\alpha, \beta}$       ---electromotive force
* $U_{\alpha, \beta}$       --- voltage for each phase in the stator fixed reference frame
* $R$ and $L$               --- phase resistance and inductance
* $\psi_{p} $               ---magnetic flux
* $\omega_{e} $             --- electric angular velocity
* $\theta{e} $              ---the rotor position(in electrical angle) of the PMSM
* $p $                     ---pole pair number 


## D Q  axis





### D Q Flux

$
\psi_{d}=L_{d}*I_{d}+\psi_{p} \\
\psi_{q}=L_{q}*I_{q} \\
$

$
\frac{\mathrm{d} \psi_{d }}{\mathrm{d} t}=L_{d}*\frac{\mathrm{d} I_{d }}{\mathrm{d} t}\\
\frac{\mathrm{d} \psi_{q }}{\mathrm{d} t}=L_{q}*\frac{\mathrm{d} I_{q }}{\mathrm{d} t}\\
$

### D Q Voltage

$
U_d =R_{s}*I_d+\frac{\mathrm{d} \psi_{d }}{\mathrm{d} t} - \omega_{e} *\psi_{q } \\
U_q =R_{s}*I_q+\frac{\mathrm{d} \psi_{q }}{\mathrm{d} t} + \omega_{e} *\psi_{d }\\
$

$
U_d =R_{s}*I_d+L_{d}*\frac{\mathrm{d} I_{d }}{\mathrm{d} t} - \omega_{e} *L_{q}*I_{q} \\
U_q =R_{s}*I_q+L_{q}*\frac{\mathrm{d} I_{q }}{\mathrm{d} t} + \omega_{e} *(L_{d}*I_{d}+\psi_{p})\\
$

<img src="./Voltage_d_q.png">

### Torque





$
T =\frac{3}{2}p*(\psi_{p\alpha}I_{\beta} -\psi_{p\beta}I_{\alpha})=\frac{3}{2}p*\psi_{p}I_{sq}  \\
$

## Moto Paramter

* https://ww2.mathworks.cn/help/sps/ug/parameterize-a-permanent-magnet-synchronous-motor.html;jsessionid=45047ed607e68a4d1c3d8fde02bb

### Voltage Constant

$
K_{e} =\frac{V_{a\_pk}}{\omega_m}  \\
K_{e} =\frac{V_{a\_pk}}{2*\pi*f_m}=\frac{V_{a\_pk}}{2*\pi*\frac{f_e}{N}}=\frac{V_{a\_pk}*N*T_e}{2*\pi}  \\
$

### Torque Constant

$
K_{t} =\frac{2}{3}*\frac{T}{I_{a\_pk}}  \\
$

### Flux linkage

$
K_{e} =K_{t}=N*\psi_{m} \\
$

## Clark Park Transfer





### Clark Transfer

#### Equal Amplitude Transfer



$
    \begin{bmatrix}
        I\alpha\\
        I\beta \\
    \end{bmatrix}
    =
    \frac{2}{3}*
    \begin{bmatrix}
        1&0 &0 &\\
        0& \frac{\sqrt{3}}{2}  &-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}*
    \begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
    \end{bmatrix}
$ 

$
    T_{3\_2}
    =
    \begin{bmatrix}
        1&0 &0 &\\
        0& \frac{\sqrt{3}}{2}  &-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}
$

$
    T_{3\_2}^T
    =
    \frac{3}{2}*
    \begin{bmatrix}
        1&0  \\
        0& \frac{\sqrt{3}}{2} \\
        0&-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}
$

#### Equal Power Transfer



$
    \begin{bmatrix}
        I\alpha\\
        I\beta \\
    \end{bmatrix}
    =
    \sqrt\frac{2}{3}*
    \begin{bmatrix}
        1&0 &0 &\\
        0& \frac{\sqrt{3}}{2}  &-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}*
    \begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
    \end{bmatrix}
$


$
    T_{3\_2}
    =
    \sqrt\frac{2}{3}*
    \begin{bmatrix}
        1&0 &0 &\\
        0& \frac{\sqrt{3}}{2}  &-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}    
$

$
    T_{3\_2}^T
    =
    \sqrt\frac{3}{2}*
    \begin{bmatrix}
        1&0\\
        0& \frac{\sqrt{3}}{2} \\
        0&-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}    
$
   

### Inverse Clark Transfer

#### Equal Amplitude Transfer



$
\begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
\end{bmatrix}
    =
T_{2\_3}*
\begin{bmatrix}
        I\alpha\\
        I\beta \\
\end{bmatrix}  
$ 

$
T_{2\_3}   = T_{3\_2}^T
$ 

$
\begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
\end{bmatrix}
    =
\frac{3}{2}*
    \begin{bmatrix}
        1&0  \\
        0& \frac{\sqrt{3}}{2} \\
        0&-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}*
\begin{bmatrix}
        I\alpha\\
        I\beta \\
\end{bmatrix}  
$ 

#### Equal Power Transfer



$
\begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
\end{bmatrix}
    =
T_{2\_3}*
\begin{bmatrix}
        I\alpha\\
        I\beta \\
\end{bmatrix}  
$ 

$
T_{2\_3}   = T_{3\_2}^T
$ 

$
\begin{bmatrix}
        I_A\\
        I_B \\
        I_C\\
\end{bmatrix}
    =
\sqrt\frac{3}{2}*
    \begin{bmatrix}
        1&0  \\
        0& \frac{\sqrt{3}}{2} \\
        0&-\frac{\sqrt{3}}{2} \\
    \end{bmatrix}*
\begin{bmatrix}
        I\alpha\\
        I\beta \\
\end{bmatrix}  
$ 

### Park Transfer

$
    \begin{bmatrix}
        I_d \\
        I_q \\
    \end{bmatrix}
    =
    \begin{bmatrix}
        cos(\theta)  &sin(\theta)\\
        -sin(\theta) &cos(\theta)\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_\alpha\\
        I_\beta \\
    \end{bmatrix}
$ 

### Inverse Park Transfer

$
    \begin{bmatrix}
        I_\alpha\\
        I_\beta \\
    \end{bmatrix}
    =
    \begin{bmatrix}
        cos(\theta)  &-sin(\theta)\\
        sin(\theta) &cos(\theta)\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_d\\
        I_q\\
    \end{bmatrix}
$ 

$$
\begin{aligned}
&y=x+b\\
&y=x^2+b\\
\end{aligned}
$$

$$
sign(x)=
\begin{cases}
1,&x>0 \\ 
0,&x=0 \\
-1,&x<0
\end{cases}
$$


$$
\begin{equation}
\begin{bmatrix}
    a & b \cr
    c & d
\end{bmatrix}
=
\begin{bmatrix}
    a & b \cr
    c & d
\end{bmatrix}
\end{equation}
$$



$$
\begin{equation}
\begin{bmatrix}
U\alpha\\
U\beta \\
\end{bmatrix}
=
\frac{3}{2}
\begin{bmatrix}
1 & 0                & 0 \\
0 &\frac{\sqrt3}{2}  &-\frac{\sqrt3}{2}
\end{bmatrix}
\begin{bmatrix}
U_a\\
U_b\\
U_c\\
\end{bmatrix}
\end{equation}
$$

\begin{equation}
\left\{
\begin{array}{c}
    a_{11}x_1+a_{12}x_2+\cdots+a_{1n}x_n=b_1 \\
    a_{21}x_1+a_{22}x_2+\cdots+a_{2n}x_n=b_2 \\
    \cdots \\
    a_{n1}x_1+a_{n2}x_2+\cdots+a_{nn}x_n=b_n
\end{array}
\right.
\end{equation}


$$A = 
    \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n}\\
        a_{21} & a_{22} & \cdots & a_{2n}\\
        \vdots & \vdots & \ddots & \vdots\\
        a_{n1} & a_{n2} & \cdots & a_{nn}\\
    \end{pmatrix}$$

​$
\hat{\beta}_{nA^{C}}= 0
$ 


$
 \hat{\beta}_{nA^{C}}= 0
$

$
\begin{aligned}
&KPI=(N+S)W \\
&PI=N+S \\
&I=W
\end{aligned}
$  
$
\begin{aligned}
KPI&=(N+S)W \\
&=NW+SW
\end{aligned}
$  
$
\begin{aligned}
 KPI&=(N+S)W\\
PI&=N+S \\
I&=W
\end{aligned}
$
# Direct Torque Control (DTC)

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26

## Torque





$
T =\frac{3}{2}p*(\psi_{p\alpha}I_{\beta} -\psi_{p\beta}I_{\alpha})  \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}\\
$\
$
\psi_{s}=L_{s}I_{s}+\psi_{p} \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2}p*(\psi_{s}-L_{s}I_{s})\times I_{s}=\frac{3}{2}p\psi_{s}\times I_{s}\\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2L_{s}}p*\psi_{p}\times (\psi_{s}-\psi_{p})\\
$

$a \times b$ \
$a \cdot b$

<img src="./DTC_vector.png">
# Field Weaken (FW)

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26

## Torque





$
T =\frac{3}{2}p*(\psi_{p\alpha}I_{\beta} -\psi_{p\beta}I_{\alpha})  \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}\\
$\
$
\psi_{s}=L_{s}I_{s}+\psi_{p} \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2}p*(\psi_{s}-L_{s}I_{s})\times I_{s}=\frac{3}{2}p\psi_{s}\times I_{s}\\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2L_{s}}p*\psi_{p}\times (\psi_{s}-\psi_{p})\\
$

$a \times b$ \
$a \cdot b$

<img src="./DTC_vector.png">

# Field Weaken (FW)

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26

## Torque





$
T =\frac{3}{2}p*(\psi_{p\alpha}I_{\beta} -\psi_{p\beta}I_{\alpha})  \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}\\
$\
$
\psi_{s}=L_{s}I_{s}+\psi_{p} \\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2}p*(\psi_{s}-L_{s}I_{s})\times I_{s}=\frac{3}{2}p\psi_{s}\times I_{s}\\
$\
$
T =\frac{3}{2}p*\psi_{p}\times I_{s}=\frac{3}{2L_{s}}p*\psi_{p}\times (\psi_{s}-\psi_{p})\\
$

$T_e-T_L=J\frac{d_{\omega_m}}{d_t}+B\omega_m$
* J is the inertia coefficient ($kg-m^2$).
* B is the friction coefficient ($\frac{kg-m^2}{sec} $).

$a \times b$ \
$a \cdot b$

<img src="./DTC_vector.png">

$
T =\frac{3}{2}p*(\psi_{p}I_{q} +(L_d-L_q)i_di_q)  \\
$

From the above equation
1. for SPMSM, Ld = Lq and there is no reluctance torque; 
2. but for IPMSM, due to usually Ld < Lq, the reluctance torque should be positive if Id is negative.

$i_d=-\frac{\psi_p}{2*(L_d-L_q)}-\sqrt{(\frac{\psi_p}{2*(L_d-L_q)})^2+i_s^2}$\
$i_q=\sqrt{i_s^2-i_d^2}$\
$i_d=i_s\sin\beta$\
$i_q=i_s\cos\beta$\
$\beta$ can be obtained by the calculation or test bench.

## MTPA





$
U_d =R_{s}*I_d+\frac{\mathrm{d} \psi_{d }}{\mathrm{d} t} - \omega_{e} *\psi_{q } \\
U_q =R_{s}*I_q+\frac{\mathrm{d} \psi_{q }}{\mathrm{d} t} + \omega_{e} *\psi_{d }\\
$\
$
U_d =R_{s}*I_d+L_{d}*\frac{\mathrm{d} I_{d }}{\mathrm{d} t} - \omega_{e} *L_{q}*I_{q} \\
U_q =R_{s}*I_q+L_{q}*\frac{\mathrm{d} I_{q }}{\mathrm{d} t} + \omega_{e} *(L_{d}*I_{d}+\psi_{p})\\
$\
$T_e=\frac{3}{2}n_p[\psi_p*i_q+(L_d-L_q)i_d*i_q]$

In steady state regime 
* the flux linkage variation is zero
* for further simplification we are going to assume the stator winding resistance is neglectable.



$
U_d =- \omega_{e} *L_{q}*I_{q} \\
U_q =\omega_{e} *(L_{d}*I_{d}+\psi_{p})\\
$


$i_s=\sqrt{i_{d}^2+i_{q}^2}\leq i_{max}^2$\
$u_s=\sqrt{u_{d}^2+u_{q}^2}\leq u_{max}^2$

### calculation 1

$i_s=\sqrt{i_{d}^2+i_{q}^2}\leq i_{max}^2$\
$u_s=\sqrt{u_{d}^2+u_{q}^2}\leq u_{max}^2$



To find the max value\
$H=\sqrt{i_{d}^2+i_{q}^2}+\lambda\{T_e-\frac{3}{2}n_p[\psi_p*i_q+(L_d-L_q)i_d*i_q]\}$

$\frac{\partial{H}}{\partial{i_d}}=\frac{i_d}{\sqrt{i_d^2+i_q^2}}-\frac{3}{2}\lambda n_p(L_d-L_q)i_q=0$ 

$\frac{\partial{H}}{\partial{i_q}}=\frac{i_q}{\sqrt{i_d^2+i_q^2}}+\frac{3}{2}\lambda n_p(L_d-L_q)i_d=0$ 

$\frac{\partial{H}}{\partial{\lambda}}=T_e-\frac{3}{2}n_p[\psi_p+\lambda n_p(L_d-L_q)]i_q=0$



Solve this 3 formula \
$i_d=\frac{-\psi_f+\sqrt{\psi_f^2+8(L_d-L_q)^2i_{s}^2}}{4(L_d-L_q)}$ 

$i_q=\frac{(\frac{8T_e\psi_f}{3n_p})+\sqrt{(\frac{8T_e\psi_f}{3n_p})^2-4[\psi_f^2-4(L_d-L_q)^2][(\frac{4T_e}{3n_p})^2-\psi_f^2]}}{2[\psi_f^2-4(L_d-L_q)^2]}$

### calculation 2

$
T_e =\frac{3}{2}p*(\psi_{p}I_{q} +(L_d-L_q)i_di_q)  \\
$

$\frac{d}{d_{i_d}}(T_e=f(i_d))=0$ 

$i_d=-\frac{\psi_p}{2*(L_d-L_q)}-\sqrt{(\frac{\psi_p}{2*(L_d-L_q)})^2+i_s^2}$\
$i_q=\sqrt{i_s^2-i_d^2}$\
$i_d=i_s\sin\beta$\
$i_q=i_s\cos\beta$\
$\beta$ can be obtained by the calculation or test bench.

### Natural Limitations

#### 1. Maximum current is limited to a Circle with Amplitude\


$I_s=\sqrt{i_d^2+i_q^2}$

#### 2. Maximum Voltage ellipse constraint imposed on current vector amplitude and angle

1. shrinks with increased speed

$U_s=\sqrt{U_d^2+U_q^2}$\
$\frac{U_d^2}{\omega_e^2} =L_{q}^2*I_{q}^2 $\
$\frac{U_q^2}{\omega_e^2} =(\psi_p+L_{d}*I_{d})^2 $\
$\frac{U_s^2}{\omega_e^2}=L_q^2*I_q^2+(\psi_p+L_d*I_d)^2$\
$U_{max}=\frac{U_{dc}}{\sqrt{3}}-R_sI_{max}\geq \sqrt{U_d^2+U_q^2}$

$\omega_{e\_base}=\frac{U_{max}}{\sqrt{(L_q*I_q)^2+(L_dI_d+\psi_p)^2}}$



## Surface PMSM

$\omega_{e\_base}=\frac{U_{max}}{\sqrt{(L_q*I_q)^2+(L_dI_d+\psi_p)^2}}$



### when $\omega_e \leq \omega_{e\_base}$

* $I_{d\_mtpa}=0$
* $I_{q\_mtpa}=\frac{T_{ref}}{\frac{3}{2}n_p\psi_p}$
* $I_{d\_sat}=I_{d\_mtpa}=0$
* $I_{q\_sat}=sat(I_{q\_mtpa},I_{max})$

### when $\omega_e > \omega_{e\_base}$

* $I_{d\_fw}=\frac{(\omega_{e\_base-\omega_e})\psi_p}{\omega_eL_d}$
* $I_{d\_sat}=max(I_{d\_fw},I_{max})$
* $I_{q\_fw}=\frac{T_{ref}}{\frac{3}{2}n_p\psi_p}$
* $I_{q\_lim}=\sqrt{I_{max}^2-I_{d\_sat}^2}$
* $I_{q\_sat}=sat(I_{q\_fw},I_{q\_lim})$

***sat*** **funciton** \
***If*** $I_{q\_fw}<-I_{q\_lim}$ \
$I_{q\_sat}=-I_{q\_lim}$ \
***If*** $I_{q\_fw}>I_{q\_lim}$ \
$I_{q\_sat}=I_{q\_lim}$ \
***If*** $-I_{q\_lim} \leq I_{q\_fw}\geq I_{q\_lim}$ \
$I_{q\_sat}=I_{q\_fw}$ 

## Interior PMSM

$I_{m\_ref}=\frac{2T_{ref}}{3n_p\psi_p}$ \
$I_m=min(I_{m\_ref},I_{max})$\
$I_{d\_mtpa}=\frac{\psi_p}{4(L_q-L_d)}-\sqrt{\frac{\psi_p^2}{16(L_q-L_d)^2}+\frac{I_m^2}{2}}$\
$I_{q\_mtpa}=\sqrt{I_m^2-(I_{d\_mtpa})^2}$\
$U_{d0}=-\omega_eL_qI_q$\
$U_{q0}=\omega_e(L_dI_d+\psi_p)$\
$U_{d0}^2+U_{q0}^2=U_{max}^2$\
$(L_qI_q)^2+(L_dI_d+\psi_p)^2\leq \frac{U_{max}^2}{\omega_e^2}$\
$I_q=\sqrt{I_{max}^2-I_d^2}$\
$(L_q^2-L_q^2)^2I_d^2+2\psi_pL_dI_d+L_q^2I_{max}^2 - \frac{U_{max}^2}{\omega_e^2}=0$



* $U_{d0}$ is the d-axis voltage when $I_d$ is zero (Volts).
* $U_{q0}$ is the q-axis voltage when $I_q$ is zero (Volts).

$I_{d\_fw}=\frac{-\psi_pL_d+\sqrt{(\psi_pL_d)^2-(L_d^2-L_q^2)(\psi_p^2+L_q^2I_{max}^2-\frac{U_{max}^2}{\omega_e^2})}}{(L_d^2-L_q^2)}$

$I_{q\_fw}=\sqrt{I_{max}^2-I_{d\_fw}^2}$

The following two equations describe computation of field-weakening currents for a given speed and torque value.



$I_{d\_fw}=-\frac{\psi_p}{L_d}+\frac{1}{L_d}\sqrt{\frac{U_{max}^2}{\omega_e^2}-(L_qI_{q\_fw})^2}$

$\begin{aligned}
&9n_p^2(L_d-L_q)^2L_q^2 \omega_e^2I_{q\_fw}^4 \\
&+(9n_p^2 \psi_p^2L_q^2\omega_e^2-9n_p^2(L_d-L_q)^2U_{max}^2 )I_{q\_fw}^2\\
&-12T_{ref}n_p\psi_pL_dL_q\omega_e^2I_{q\_fw}\\
&+4T_{ref}^2L_d^2\omega_e^2\\
&=0
\end{aligned}$

### To reduce the computation time, the block uses approximations to solve the preceding polynomial.

#### when $\omega_e \leq \omega_{e\_base}$

* $I_{d\_ref}=I_{d\_mtpa}$
* $I_{q\_ref}=I_{q\_mtpa}$

#### when $\omega_e > \omega_{e\_base}$

* $I_{d\_ref}=max(I_{d\_fw},-I_{max})$
* $I_{q\_fw}=\sqrt{I_{max}^2-I_{d\_fw}^2}$

#### ***IF*** $I_{q\_fw}<{I_{m}}$

* $I_{q\_ref}=I_{q\_fw}$

#### ***IF*** $I_{q\_fw} \geq{I_{m}}$

* $I_{q\_ref}=I_{m}$

***sat*** **funciton** \
***If*** $I_{q\_fw}<-I_{q\_lim}$ \
$I_{q\_sat}=-I_{q\_lim}$ \
***If*** $I_{q\_fw}>I_{q\_lim}$ \
$I_{q\_sat}=I_{q\_lim}$ \
***If*** $-I_{q\_lim} \leq I_{q\_fw}\geq I_{q\_lim}$ \
$I_{q\_sat}=I_{q\_fw}$ 

##### TODO MTPA plot


```python
from matplotlib.patches import Ellipse
import matplotlib.pyplot as plt
fig = plt.figure()
ax = fig.add_subplot(111)
ell1 = Ellipse(xy = (0.0, 0.0), width = 4, height = 8, angle = 90.0, facecolor= 'blue', alpha=0.3)
ax.add_patch(ell1)
x, y = 0, 0
ax.plot(x, y, '.')
plt.show()

```


    
![png](output_54_0.png)
    


#### 3.D-axis component of current vector is limited such as to avoid PM demagnetization


* Depends on motor magnetic design and used PMs
* Current vector created by DQ-axis currents must lie within area surrounded by current limit circle,voltage limit ellipse and MTPA line
* Voltage limit ellipse shrinks with increased rotor speed and constrains the MTPA
* Amplitude of current limit circle is constant throughout the motor operation and depends on motor parameters
* Depending on parameters of permanent magnets,maximum level of safe demagnetization can not be exceeded

### MTPA-Integration of FW-MTPA into FOC

Field weakening + MTPA provided by close loop regulation of stator d-axis current
component and limitation of applied torque

***Pros***
* Minimizes electrical losses
* Optimizes drive and inverter efficiency
* Maximum developed torque of FOC with MTPA is greater than that of conventional FOC
  
***Cons***
* Motor parameters LdLq k E has to be identified
* Requires additional calculation (MULT + SQRT)
* Care must be taken to avoid irreversible demagnetization of permanent magnets
