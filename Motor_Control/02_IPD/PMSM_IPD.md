# PMSM Initial Position Detection

* Sensorless Control of PMSM Drive Using Sliding-Mode-Observers
* Barna Marcell Temesi, Una Gudrun Gautadottir
* Energy Technology, MCE3-921, 2020-05
* Master’s Thesis


## Sensorless control for low speeds

Sensorless control for low speeds is notably problematic due to the low magnitude \
of the measured signals compared to the noise or the back-EMF, which eventually \
vanishing at zero speed. Methods based on rotor saliency and the change of the \
saliency were invented and researched.

The most popular method is called INFORM. It is based on the fact that the magnetic \
anisotropy of the rotor gives information about its position. The magnetic \
anisotropy is detected by injecting test voltages, then measuring the change in the \
stator current vector. Low-pass filters are needed to extract the high frequency \
current component which is fed back to the current controllers. Low-pass filters \
introduce phase delay into the system which in result, limits the bandwidth of the \
current controllers. In case the filtering is not adequate, torque ripples can occur \
in the system [7].

There are several methods based on this estimation principle, they only differ in \
how the voltage vector is injected. 
There are two widely used types,
* injects a rotating voltage vector in the stationary reference frame , 
* injects a pulsating voltage vector in the estimated d-axis or q-axis of the estimated rotor \
reference frame. 

Feeding the calculated difference signal through a PLL, the speed and position signals now can be acquired. 

The Square-wave type voltage injection method relies on the injection of highfrequency \
square-wave-type voltage. The frequency is chosen to be half the sampling   \
frequency. This frequency is much higher than the frequency of the injected \
voltage in other methods. Filtering is still needed in this case, but the cut-off frequency \
of the low-pass filters can be increased alongside with the bandwidth of the    \
current controllers. This enhances the overall performance of the system.

Adaptive Compensation Method of Position Estimation Harmonic Error for EMF-Based Observer in Sensorless IPMSM Drives
Effectiveness of Voltage Error Compensation and Parameter Identification for Model-Based Sensorless Control of IPMSM

## Open-loop startup methods

The two most used open-loop methods are V/ f control and I-f control. 

Openloop startup techniques are often used when the criteria of performance are not  \
strict. This results in a simpler system with fewer components. 

In the case of speed control, in open-loop control, the speed is not fed back to the \
controller. This means, an encoder is not needed, which saves weight and money. 

This heavily reduces the robustness of the system, because it is only assumed now that \
the speed matches the reference speed. The handling of load torques and the rejection   \
of disturbance torques have to be carefully considered during the design process    



## alignment algorithm
