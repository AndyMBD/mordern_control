# PMSM Motor Start

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26

## V/F Scalar Control





### V/F Scalar Control Principle





https://community.nxp.com/t5/Model-Based-Design-Toolbox-MBDT/Module-5-V-F-Scalar-Control/m-p/726087

$
U_d =R_{s}*I_d+\frac{\mathrm{d} \Psi_{d }}{\mathrm{d} t} - \omega_{e} *\Psi_{q } \\
U_q =R_{s}*I_q+\frac{\mathrm{d} \Psi_{q }}{\mathrm{d} t} + \omega_{e} *\Psi_{d }\\
$

$
U_d =R_{s}*I_d+L_{d}*\frac{\mathrm{d} I_{d }}{\mathrm{d} t} - \omega_{e} *L_{q}*I_{q} \\
U_q =R_{s}*I_q+L_{q}*\frac{\mathrm{d} I_{q }}{\mathrm{d} t} + \omega_{e} *(L_{d}*I_{d}+\Psi_{p})\\
$

In steady state region, 
* the flux linkage variation is zero, 
* for further simplification we are going to assume the stator winding resistance is neglectable. <br>

Taking into consideration these simplifications and the flux linkage equation (eq. 2) then the equations (eq. 3) becomes:

$
U_d =- \omega_{e} *L_{q}*I_{q} \\
U_q =  \omega_{e} *(L_{d}*I_{d}+\Psi_{p})\\
$

At this point we can transform the electric speed in frequency and rewrite the equation as a ratio of V/F

$
\frac{U_d}{f} =- (2*\pi) *L_{q}*I_{q} \\
\frac{U_q}{f} =  (2*\pi)  *(L_{d}*I_{d}+\Psi_{p})\\
$

In V/F scalar control method the frequency of the stator magnetic flux is set according with the desired synchronous rotor speed while the magnitude of the stator voltage is adjusted to keep the ratio between them constant. No control over voltage or current vectors angles is utilized, hence the name scalar control. <br>
The V/F ratio is calculated from the nominal values of the PMSM voltage and frequency parameters. By maintaining a constant V/F ratio between the amplitude and frequency of 3-phase voltage waveforms, then the stator flux of the PMSM can be maintained relatively constant in steady state. However, in practice a typical V/F profile is not constant over the entire range of motor speed.<br>

the V/F profile may be divided in three main regions:
* Compensation – a higher than normal voltage is required to compensate the voltage drop across the stator resistance that was neglected for simplified mathematical model
* Linear - follows the constant V/f relationship as derived from
* Field weakening - constant V/f ratio cannot be satisfied due to the stator voltages limitation at the rated value in order to avoid insulation breakdown

<img src="./VF_Start.png">

The V/F scalar control is the most common control strategy used for induction motor drives.<br>
* In case of PMSM, the V/F scalar control is a good alternative in applications where good dynamic performance is not required (e.g.: HVAC, fans, pumps or blowers). 
* In such cases the V/F scalar control is performed without the need of a position/speed sensor.<br>

By using V/F scalar control there is no need for high capability CPU as in the case of FOC, but keep in mind that this kind of simplicity also comes with some disadvantages:

* instability of the system after exceeding a certain applied frequency
* systems low dynamic performance, which limits the use of this control method
* poor fault protection against stall detection and over-currents



In case of PMSM, both open and closed-loop control of the speed can be implemented based on the V/F scalar control. Open-loop control is used in applications where system dynamic response is not a concern. For such use cases, the frequency is determined based on the desired speed and the assumption that the rotor will ultimately follow the synchronous speed. 

### Simulation

### Validation
