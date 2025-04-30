# PMSM Estimation Flux

* Infineon Patent No.: US 2005/0081647 A1 Pub. Date: Apr. 21, 2005
* Infineon-AP32370 PMSM FOC for MC1000-ApplicationNotes-v01_05-EN
* 永磁同步电机高效V／F控制方法研究  朱明东 湖南大学
* Sensorless V／F Control of high-speed surface Permanent synchronous Motor drivers with two novel stabilising loops
for fast dynamics and robustness．

## Flux Estimation

$
\Psi_{p\alpha }=\Psi_{p} *\cos(\omega_{e}t ) \\
\Psi_{p\beta } =\Psi_{p} *\sin(\omega_{e}t ) \\
$

$
\theta =\arctan(\frac{\Psi_{p\alpha }}{\Psi_{p\beta}}) \\
$

$
\Psi_{p\alpha }=\Psi_{p} *\cos(\theta ) \\
\Psi_{p\beta } =\Psi_{p} *\sin(\theta ) \\
$


$
\Psi_{s\alpha }=L_s*I_{\alpha }+\Psi_{p\alpha } \\
\Psi_{s\beta } =L_s*I_{\beta }+\Psi_{p\beta } \\
$

$
U_{\alpha } =R_{s}*I_{\alpha }+\frac{\mathrm{d} \Psi_{s\alpha }}{\mathrm{d} t} \\
U_{\beta } =R_{s}*I_{\beta }+\frac{\mathrm{d} \Psi_{s\beta }}{\mathrm{d} t} \\
$



$
\Psi_{s\alpha }=\int(U_{\alpha }-R_{s}*I_{\alpha })dt \\
\Psi_{s\beta }=\int(U_{\beta }-R_{s}*I_{\beta })dt \\
$


$
\Psi_{p\alpha }= \Psi_{s\alpha }-L_s*I_{\alpha }\\
\Psi_{p\beta }=\Psi_{s\beta } -L_s*I_{\beta } \\
$

Flux . Real \
$
\Psi_{p\alpha }= \int(U_{\alpha }-R_{s}*I_{\alpha })dt-L_s*I_{\alpha }\\
$\
Flux . Imag \
$
\Psi_{p\beta }=\int(U_{\beta }-R_{s}*I_{\beta })dt -L_s*I_{\beta } \\
$\
Flux Angle \
$
\theta =\arctan(\frac{\Psi_{p\alpha }}{\Psi_{p\beta}}) \\
$\
Flux Amp \
$
FluxAmp =\sqrt{(\Psi_{p\alpha })^2+(\Psi_{p\beta })^2 }  \\
$

$T_e =-I_{\alpha}*\Psi_{p\beta} + I_{\beta }*\Psi_{p\alpha} $

$T_e=U_q*I_d-U_d*I_q$

$T_e=T_L+B\omega_m+J\frac{d\omega_m}{d_t}$

$T_e=\frac{3}{2}p(\psi_p*I_q+(L_d-L_q)I_dI_q)$

## Estimator

***Estimator Process***
1. Determining a rotor magnetic flux in the motor
   1. May include the step of non-ideal integration of Stator Voltage and current values.
2. Estimating the rotor angle on the basis of the rotor magnetic flux
   1. may include the Step of correcting phase errors caused by Said non-ideal integration via a PLL circuit with phase compensation
3. Correcting the estimated rotor angle on the basis of reactive power input to the motor
   1. calculating a first ***reactive power*** input value as $\frac{3}{2}\omega_e(L_q*I*I)$ and a second ***reactive power*** input value as $\frac{3}{2}(U_q*I_d-U_d*I_q)$
   2. determining a difference between said first and Second reactive power input values
   3. applying said difference to the rotor angle estimated Step (b) to obtain a corrected rotor angle.

