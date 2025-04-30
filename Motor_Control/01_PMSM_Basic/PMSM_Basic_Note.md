# PMSM Motor

* Controlled Three-Phase Drives Prof. Dr.-Ing. Joachim Böcker
* Paderborn University Power Electronics and Electrical Drives
* Lecture Notes Last Update 2016-01-26
* New method of direct reactive energy and torque control for permanent magnet synchronous motor 
  * M. JANASZEK
  * BULLETIN OF THE POLISH ACADEMY OF SCIENCES TECHNICAL SCIENCES
  * Vol. 54, No. 3, 2006


## VF

* 一种基于功率观测的永磁同步电机高效V_f控制_张幸浩_章玮
* 一种稳定的高速永磁同步电机V_F控制方法
* 永磁同步电机高效V_F控制方法研究 朱明东
  * ***Active current*** ***deactive Current**** Page 26
* ~~永磁同步电机开环V/F稳定控制方法 林东，彭惠 福州大学~~ ***错误很多***
* 永磁同步电动机无位置传感器控制与高性能运行策略的研究 孙伟
* 永磁同步电机无速度传感器控制综述  李永东, 朱昊 清华大学
  * 主要讲现状和有哪些方法

## IF

* 永磁同步电机全速度范围无位置传感器控制策略研究 王子辉


用于提高VF控制稳定性的措施， 
* 如***有功电流前馈*** ***有功功率前馈***等***频率调节方式***， 
* 以及***无功功率闭环***、***直轴电流前馈***等***电压和相位调节方式***。\
通过这些措施， VF 控制方式可以获得较好的***控制稳定性 较高的电机效率、和较快的转速响应***
48 49 52 56 57 58 60



```python
import numpy as np
U_DC=1
Angle=0
U_A=2/3*U_DC*np.cos(Angle)
U_B=2/3*U_DC*np.cos(Angle-2/3*np.pi)
U_C=2/3*U_DC*np.cos(Angle+2/3*np.pi)
U_m_ABC=U_A-U_B*np.cos(1/3*np.pi)-U_C*np.cos(1/3*np.pi)
print("U_A = ",U_A)
print("U_B = ",U_B)
print("U_C = ",U_C)
print("U_m = ",U_m_ABC)
# U_ABC_Vector=
U_1=2/3*U_DC
U_2=2/3*U_DC*0.5
# U_m_12=
print("U_1 = ",3/2*U_1)
print("U_2 = ",U_2)
# print("U_m_12 = ",U_m_12)
# U_12_Vector=
```

    U_A =  0.6666666666666666
    U_B =  -0.33333333333333315
    U_C =  -0.33333333333333315
    U_m =  0.9999999999999999
    U_1 =  1.0
    U_2 =  0.3333333333333333
    
