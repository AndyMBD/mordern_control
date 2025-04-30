# VF Control




**Referance**
* V/f Control of Three-phase Induction Motor Algorithm R01AN2195EJ0100


* 永磁同步电机开环V_F稳定控制方法 林东 彭惠 福州大学

FOC控制中如何实现电机启动过程中速度稳定切换 zhihu
* 王子辉，浙江大学，永磁同步电机全速度范围无位置传感器控制策略研究


**转矩－功角自平衡**\
$T_e=\frac{3}{2}p\psi_{pm}I_q^*cos(\theta_L)$\
当负载转矩增大时，$dq$ 坐标系转速下降，$\theta_L$减小，相应的电磁转矩增大，启动过程会达到新的平衡; 负载转矩减小时，$dq$ 坐标系转速增加，$\theta_L$
增大，相应的电磁转矩减小，启动过程也会达到新的平衡。这个过程就是“转矩－功角自平衡”原理，也正因为这种动态调节能力，$I-f$
启动策略拥有“转矩-功角自平衡”的固有特性

**Principles**<br>
V/f control is a method to control a ratio between primary voltage (V) to be applied to the induction motor and inverter output frequency (f) to be constant. <br>
This control enables to obtain satisfactory torque characteristics in a wide frequency range by maintaining the magnitude of the rotating magnetic field vector ***independently*** from the inverter output frequency a when voltage drop due to a primary winding resistance is ignored.<br>
However, as the frequency declines, the voltage drop due to the primary winding resistance becomes too large to be ignored, and consequently it becomes impossible to obtain sufficient torque.<br> 
In such a case, applying a higher voltage than the voltage calculated from the V/f ratio which was used for a high frequency makes it possible to secure enough torque even at a low frequency.

Classification of Sensorless Methods


$
U_d =R_{s}*I_d+\frac{\mathrm{d} \Psi_{d }}{\mathrm{d} t} - \omega_{e} *\Psi_{q } \\
U_q =R_{s}*I_q+\frac{\mathrm{d} \Psi_{q }}{\mathrm{d} t} + \omega_{e} *\Psi_{d }\\
$\
$
\Psi_{q }=L_{d}*I_{d }+\Psi_{p }\\
U_q =L_{q}*I_{q }\\
$\
$
U_d =R_{s}*I_d+L_{d}*\frac{\mathrm{d} I_{d }}{\mathrm{d} t} - \omega_{e} *L_{q}*I_{q} \\
U_q =R_{s}*I_q+L_{q}*\frac{\mathrm{d} I_{q }}{\mathrm{d} t} + \omega_{e} *(L_{d}*I_{d}+\Psi_{p})\\
$

In steady state regime 
* the flux linkage variation is zero
* for further simplification we are going to assume the stator winding resistance is neglectable.



$
U_d =- \omega_{e} *L_{q}*I_{q} \\
U_q =\omega_{e} *(L_{d}*I_{d}+\Psi_{p})\\
$



$
U_d =- 2\pi*f *L_{q}*I_{q} \\
U_q =2\pi*f *(L_{d}*I_{d}+\Psi_{p})\\
$



$
\frac{U_d}{f} =- 2\pi *L_{q}*I_{q}
$\
$
\frac{U_q}{f} =2\pi *(L_{d}*I_{d}+\Psi_{p})
$


the V/F profile may be divided in three main regions:

1. ***Compensation*** 
   - a higher than normal voltage is required to compensate the voltage drop across the stator resistance that was neglected for simplified mathematical model
2. ***Linear*** 
   - follows the constant V/f relationship as derived from
3. ***Field weakening*** 
   - constant V/f ratio cannot be satisfied due to the stator voltages limitation at the rated value in order to avoid insulation breakdown

The V/F scalar control is the most common control strategy used for induction motor drives.\
In case of PMSM, the V/F scalar control is a good alternative in applications where ***good dynamic performance is not required*** (e.g.: HVAC, fans, pumps or blowers). \
In such cases the V/F scalar control is performed without the need of a position/speed sensor.

 

By using V/F scalar control there is no need for high capability CPU as in the case of FOC, but keep in mind that this kind of simplicity also comes with some disadvantages:

1. instability of the system after exceeding a certain applied frequency
2. systems low dynamic performance, which limits the use of this control method
3. poor fault protection against stall detection and over-currents
