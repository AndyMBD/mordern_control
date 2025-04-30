# PMSM resistance and inductance

## PMSM resistance

The stator resistance of the motor’s coils, also noted as Rs, can vary drastically \
depending on the operating temperature of the coils (also known as motor windings). \
This temperature might increase due to several factors.\
The following examples list a few of those conditions where the stator coils temperature might be affected:
* Excessive currents through the coils.
* Motor's enclosure does not allow self cooling.
* Harsh operation environment leading to temperature increase
* Other heating elements in motor's proximity.

As a result of the temperature increase, there is a resistance increase on the motor's windings. \
This resistance to temperature relationship is well defined depending on the materials used for the windings themselves.

## Resistance vs. Temperature

From InstaSPIN-FOC

A common material for the windings is copper. The following equation represents a linear approximation of the
resistance and temperature relationship:\
$R = R_0[1 + \alpha(T − T_0)] $ \
Where:
* $R$: Resistance in Ohms at temperature T, in Ohms ($\Omega$)
* $R_0$: Resistance in Ohms at temperature T0, in Ohms (Ω)
* $\alpha$: Temperature coefficient of the material, in inverse Celsius ($^{\circ}C-1$)
* T: Final temperature of the material, in Celsius ($^{\circ}C$)
* $T_0$: Reference temperature of the material, in Celsius ($^{\circ}C$) 

For example, consider a stator resistance, Rs, to be $10\Omega$ at $20^{\circ}C$, \
and the windings are made out of copper,with temperature coefficient of $0.00393^{\circ}C-1$. \
If the motor heats up to $150^{\circ}C$, the new stator resistance will be:\
R = R0[1 + α(T − T0)]\
R = 10 Ω[1 + 0.00393°C−1($150^{\circ}C-20^{\circ}C$)]\
R = 15.109 Ω \
As can be seen, there is a significant resistance change depending on the temperature, \
in the example, almost 52% percent increase.

### Accurate Rs Knowledge Needed at Low Speeds Including Startup

The motor model used for FAST is affected by this resistance change, especially at low speeds. This is because\
at low speeds the majority of the voltage drop inside of the motor model is governed by the stator resistance and\
the DC component of the current:\
$R_si_s$\
On the other hand, stator resistance changes outside of the low speed range do not affect the performance of\
the motor model significantly since at medium to high speeds the internal voltage drop of the model is governed\
by the back EMF and the inductance times the derivative of the current, or:\
$R_s\frac{di_{s}}{dt}+e_s$\
It is then required for low speed performance to have an accurate knowledge of the stator resistance, \
especially when operating at full loads, including starting up the motor from stand still at full load.

### Rs Online vs. Rs Offline

#### Rs Online

Several parameters can be tuned and modified within the Rs Online feature of InstaSPIN-FOC. \
The following list of parameters will be discussed in further detail in this section:
* Injected Current Magnitude
* Slow Rotating Angle
* Delta Increments and Decrements of the Rs Online Value
* Filter Parameters

#### Using the Rs Online Feature as a Temperature Sensor

This unique feature to monitor the resistance of the motor while spinning, \
allows the user to monitor the temperature of the coils based on the resistance increment.\
To show an example of a temperature sensor implementation

Once the Rs Online feature is enabled, consider a resistance increase from 10.0 Ω to 12.0 Ω.\
The temperature of the motor windings can be calculated based on the following equation, \
derived from the equation listed in the previous section:

This code example can be executed in the background outside of the interrupts. \
The execution time is not critical at all, since temperature changes are much slower\
compared to the CPU timing. So by using Rs Online, users can set a same temperature limit \
to their motor to avoid damage and malfunction of the system. For easier computation of the \
temperature, a look up table is recommended, to avoid the execution penalty of this equation \
in real time.

#### Rs Offline


InstaSPIN-FOC includes another resistance recalibration, which is done before the motor is spun, \\
known as Rs Offline. Rs Offline requires the motor to be at standstill, injecting a DC current into Id. \
On the other hand, Rs Online requires the motor to be spinning in order to recalibrate the resistance, \
injecting an AC current into Id.\
Both Rs Offline and Rs Online are critical portions of InstaSPIN-FOC to provide the best low speed performance.\
In a typical application, Figure 15-7 shows the use of both Rs offline and Rs online.

