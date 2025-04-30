- [1. Sensorless control methods](#1-sensorless-control-methods)
  - [1.1. Introduction](#11-introduction)
  - [1.2. Drives](#12-drives)
  - [1.3. Basic Principle of PM BLAC (PMSM) Drives](#13-basic-principle-of-pm-blac-pmsm-drives)
    - [1.3.1. Modeling](#131-modeling)
      - [1.3.1.1. ABC Reference Frame](#1311-abc-reference-frame)
      - [1.3.1.2. Stationary Reference Frame](#1312-stationary-reference-frame)
      - [1.3.1.3. Synchronous Reference Frame](#1313-synchronous-reference-frame)
    - [1.3.2. Control Strategies](#132-control-strategies)
      - [1.3.2.1. Space Vector PWM](#1321-space-vector-pwm)
      - [1.3.2.2. Field-Oriented Control](#1322-field-oriented-control)
      - [1.3.2.3. Direct Torque Control](#1323-direct-torque-control)
      - [1.3.2.4. Model Predictive Control](#1324-model-predictive-control)
  - [1.4. Basic Principle of PM BLDC Drives](#14-basic-principle-of-pm-bldc-drives)
    - [1.4.1. Modeling](#141-modeling)
    - [1.4.2. Control Strategies](#142-control-strategies)
  - [1.5. Comparison Between PM BLDC (PMSM) and BLAC Drives](#15-comparison-between-pm-bldc-pmsm-and-blac-drives)
    - [1.5.1. Square-Wave Back-EMF Machine](#151-square-wave-back-emf-machine)
    - [1.5.2. Sine-Wave Back-EMF Machine](#152-sine-wave-back-emf-machine)
  - [1.6. Sensorless Control Techniques and Applications](#16-sensorless-control-techniques-and-applications)
    - [1.6.1. Applications](#161-applications)
  - [1.7. Scope of This Book](#17-scope-of-this-book)
- [2. Sensorless control methods](#2-sensorless-control-methods)
  - [2.1. Introduction](#21-introduction)
  - [2.2. Flux-Linkage-Based Method](#22-flux-linkage-based-method)
    - [2.2.1. Flux-Linkage Method for Non-salient PMSMs](#221-flux-linkage-method-for-non-salient-pmsms)
    - [2.2.2. Active Flux-Linkage Method for Salient PMSMs](#222-active-flux-linkage-method-for-salient-pmsms)
  - [2.3. Back-EMF-Based Method](#23-back-emf-based-method)
    - [2.3.1. Back-EMF Method for Non-salient PMSMs](#231-back-emf-method-for-non-salient-pmsms)
    - [2.3.2. Extended Back-EMF Method for Salient PMSMs](#232-extended-back-emf-method-for-salient-pmsms)
      - [2.3.2.1. In Synchronous Reference Frame](#2321-in-synchronous-reference-frame)
      - [2.3.2.2. In Stationary Reference Frame](#2322-in-stationary-reference-frame)
  - [2.4. Comparison](#24-comparison)
    - [2.4.1. BEMF and flux](#241-bemf-and-flux)
    - [2.4.2. extend BEMF and active flux](#242-extend-bemf-and-active-flux)
  - [2.5. Position Observer](#25-position-observer)
    - [2.5.1. Arctangent Method](#251-arctangent-method)
    - [2.5.2. Phase-Locked Loop](#252-phase-locked-loop)
    - [2.5.3. Simplified Extended Kalman Filter](#253-simplified-extended-kalman-filter)

# 1. Sensorless control methods
## 1.1. Introduction
## 1.2. Drives

## 1.3. Basic Principle of PM BLAC (PMSM) Drives
### 1.3.1. Modeling
#### 1.3.1.1. ABC Reference Frame
在ABC三相坐标系中，
```math
\begin{bmatrix}
 v_{A}\\
 v_{B}\\
 v_{C}\\
\end{bmatrix} =
\begin{bmatrix}
 R_s   &0      &0  \\
 0     &R_s    &0  \\
 0     &0      &R_s\\
\end{bmatrix}*
\begin{bmatrix}
 i_{A}\\
 i_{B}\\
 i_{C}\\
\end{bmatrix}
 +p
 \begin{bmatrix}
 \psi_{A}\\
 \psi_{B}\\
 \psi_{C}\\
\end{bmatrix}
\tag{1.1}
```
* $v_{A}$ 是A相电压
* $i_{A}$ 是A相电流
* $\psi_{A}$ 是A相定子磁链
* $R_s$ 是定子电阻
* $p=\frac{d}{dt}$,p是微分算子

```math
\begin{bmatrix}
 \psi_{A}\\
 \psi_{B}\\
 \psi_{C}\\
\end{bmatrix} =
\begin{bmatrix}
 L_{AA} &M_{AB}   &M_{AC}  \\
 M_{BA} &L_{BB}   &M_{BC}  \\
 M_{CA} &M_{CB}   &L_{CC}  \\
\end{bmatrix}*
\begin{bmatrix}
 i_{A}\\
 i_{B}\\
 i_{C}\\
\end{bmatrix}
 +\psi_m 
\begin{bmatrix}
 cos(\theta_r)\\
 cos(\theta_r-2\pi/3)\\
 cos(\theta_r+2\pi/3)\\
\end{bmatrix}
\tag{1.2}
```
* $L_{AA}$ 是三相绕组自感
* $M_{AB}$ 是三相绕组互感
* $\psi_{m}$ 是永磁体磁链
* $\theta_r$ 是电角度

```math
\left\{
\begin{aligned}
L_{AA}&=L_{s0}-L_{s2}cos(2\theta_r)  \\
L_{BB}&=L_{s0}-L_{s2}cos(2(\theta_r-2\pi/3))\\
L_{CC}&=L_{s0}-L_{s2}cos(2(\theta_r+2\pi/3))\\
\end{aligned}
\right.
\tag{1.3}
```
* $L_{s0}$ 是自感的直流分量
* $L_{s2}$ 是自感的2次谐波分量的幅值
```math
\left\{
\begin{aligned}
M_{AB}&=M_{BA}=M_{s0}-M_{s2}cos(2(\theta_r+2\pi/3))  \\
M_{BC}&=M_{CB}=M_{s0}-M_{s2}cos(2(\theta_r))\\
M_{CA}&=M_{AC}=M_{s0}-M_{s2}cos(2(\theta_r-2\pi/3))\\
\end{aligned}
\right.
\tag{1.4}
```
* $M_{s0}$ 是互感的直流分量
* $M_{s2}$ 是互感的2次谐波分量的幅值
* ***非凸极电机没有2次谐波分量 $L_{s2}=M_{s2}=0$***
#### 1.3.1.2. Stationary Reference Frame
```math
T_{ABC-\alpha\beta}=\frac{2}{3}
\begin{bmatrix}
 1              &-\frac{1}{2}           &-\frac{1}{2}  \\
 0              &\frac{\sqrt{3}}{2}     &-\frac{\sqrt{3}}{2}  \\
 \frac{1}{2}    &\frac{1}{2}            &\frac{1}{2}  \\
\end{bmatrix},
T_{\alpha\beta-ABC}=
\begin{bmatrix}
 1              &0                      &1  \\
 -\frac{1}{2}   &\frac{\sqrt{3}}{2}     &1  \\
 -\frac{1}{2}   &-\frac{\sqrt{3}}{2}    &1  \\
\end{bmatrix}
\tag{1.5}
```
```math
\begin{bmatrix}
 v_{\alpha}    \\
 v_{\beta}    \\
\end{bmatrix}=
\begin{bmatrix}
 R_s   &0      \\
 0     &R_s    \\
\end{bmatrix}*
\begin{bmatrix}
 i_{\alpha}    \\
 i_{\beta}    \\
\end{bmatrix}+p
\begin{bmatrix}
 \psi_{\alpha}    \\
 \psi_{\beta}    \\
\end{bmatrix}
\tag{1.6}
```
```math
\begin{bmatrix}
 \psi_{\alpha}    \\
 \psi_{\beta}    \\
\end{bmatrix}=
\begin{bmatrix}
 L_{\alpha\alpha}   &M_{\alpha\beta}      \\
 M_{\beta\alpha}    &L_{\beta\beta}      \\
\end{bmatrix}*
\begin{bmatrix}
 i_{\alpha}    \\
 i_{\beta}    \\
\end{bmatrix}+\psi_{m}
\begin{bmatrix}
 cos{\theta_r}    \\
 sin{\theta_r}    \\
\end{bmatrix}
\tag{1.7}
```
* $v_{\alpha}$ 是$\alpha$轴电压
* $i_{\alpha}$ 是$\alpha$轴电流
* $\psi_{\alpha}$ 是$\alpha$轴磁链
* $L_{\alpha\alpha}$是静止坐标系自感
* $M_{\alpha\beta}$是静止坐标系互感
```math
\left\{
\begin{aligned}
L_{\alpha\alpha}&=\frac{L_d+L_q}{2}+\frac{L_d-L_q}{2}cos(2\theta_r)\\
L_{\beta\beta}  &=\frac{L_d+L_q}{2}-\frac{L_d-L_q}{2}cos(2\theta_r)\\
M_{\alpha\beta}&=M_{\beta\alpha}=\frac{L_d-L_q}{2}cos(2\theta_r)
\end{aligned}
\right.
\tag{1.8}
```
* $L_d L_q$ 是dq轴电感
* ***如果电机是非凸极的，那么$L_d=L_q=L_s$***
```math
L_d=L_q=L_s
\tag{1.9}
```
#### 1.3.1.3. Synchronous Reference Frame

```math
T_{\alpha\beta-dq}=
\begin{bmatrix}
 cos(\theta_r)      &sin(\theta_r)  &0 \\
 -sin(\theta_r)     &cos(\theta_r)  &0  \\
 0                  &0              &1  \\
\end{bmatrix}
\tag{1.10}
```
```math
T_{dq-\alpha\beta}=
\begin{bmatrix}
 cos(\theta_r)     &-sin(\theta_r)  &0 \\
 sin(\theta_r)     &cos(\theta_r)  &0  \\
 0                 &0              &1  \\
\end{bmatrix}
\tag{1.11}
```
```math
T_{ABC-dq}
=T_{ABC-\alpha\beta}*T_{\alpha\beta-dq}
=\frac{2}{3}
\begin{bmatrix}
 cos(\theta_r)     &cos(\theta_r-2\pi/3)   &cos(\theta_r+2\pi/3) \\
 -sin(\theta_r)    &-sin(\theta_r-2\pi/3)  &-sin(\theta_r+2\pi/3)  \\
 \frac{1}{2}       &\frac{1}{2}            &\frac{1}{2}  \\
\end{bmatrix}
\tag{1.12}
```
```math
T_{dq-ABC}
=T_{dq-\alpha\beta}*T_{\alpha\beta-ABC}
=
\begin{bmatrix}
 cos(\theta_r)           &-sin(\theta_r)         &1 \\
 cos(\theta_r-2\pi/3)    &-sin(\theta_r-2\pi/3)  &1  \\
 cos(\theta_r+2\pi/3)    &-sin(\theta_r+2\pi/3)  &1  \\
\end{bmatrix}
\tag{1.13}
```
```math
\begin{bmatrix}
 v_d    \\
 v_q    \\
\end{bmatrix}
=
\begin{bmatrix}
 R_s &0    \\
 0   &R_s   \\
\end{bmatrix}
\begin{bmatrix}
 i_d    \\
 i_q    \\
\end{bmatrix}+p
\begin{bmatrix}
 \psi_d    \\
 \psi_q    \\
\end{bmatrix}+\omega_r
\begin{bmatrix}
 -\psi_q    \\
 \psi_d    \\
\end{bmatrix}
\tag{1.14}
```

```math
\begin{bmatrix}
 \psi_d    \\
 \psi_q    \\
\end{bmatrix}
=
\begin{bmatrix}
 L_d &0    \\
 0   &L_q   \\
\end{bmatrix}
\begin{bmatrix}
 i_d    \\
 i_q    \\
\end{bmatrix}+\psi_m
\begin{bmatrix}
 1    \\
 0    \\
\end{bmatrix}
\tag{1.15}
```
### 1.3.2. Control Strategies
#### 1.3.2.1. Space Vector PWM
```math
v_s=v_{AN}+v_{BN}e^{j\frac{2}{3}\pi}+v_{CN}e^{j\frac{4}{3}\pi}
\tag{1.16}
```
```math
v_s=v_{AN}+v_{BN}e^{j\frac{2}{3}\pi}+v_{CN}e^{j\frac{4}{3}\pi}
=v_{\alpha}+jv_{\beta}
\tag{1.17}
```
```math
v^{*}_sT_s=v_{1}T_{1}+v_{2}T_{2}+v_{0}T_{0}
\tag{1.18}
```
```math
T_S=T_{1}+T_{2}+T_{0}
\tag{1.19}
```
```math
\left\{
    \begin{array}{lr}
        T_{1}=\frac{\sqrt{3}V^{*}_{s}}{V_{dc}}T_{s}sin(\frac{\pi}{3}-\theta)\\
        T_{2}=\frac{\sqrt{3}V^{*}_{s}}{V_{dc}}T_{s}sin(\theta),0\leq\theta\leq\frac{\pi}{3}\\
        T_{0}=T_s-T_1-T_2 \\
    \end{array}
\right.
\tag{1.20}
```

#### 1.3.2.2. Field-Oriented Control
#### 1.3.2.3. Direct Torque Control
#### 1.3.2.4. Model Predictive Control
```math
\begin{aligned}
\begin{bmatrix}
i^{p}_{d}(k+1)\\
i^{p}_{d}(k+1)
\end{bmatrix}
&=
\begin{bmatrix}
1-\frac{T_s}{L_s}R_s&\omega_rT_s\\
-\omega_rT_s&1-\frac{T_s}{L_s}R_s
\end{bmatrix}
\begin{bmatrix}
i_{d}(k)\\
i_{d}(k)
\end{bmatrix}\\
&+
\begin{bmatrix}
\frac{T_s}{L_s}&0\\
0&\frac{T_s}{L_s}
\end{bmatrix}
\begin{bmatrix}
v_{d}(k)\\
v_{d}(k)
\end{bmatrix}+
\begin{bmatrix}
0\\
-\frac{T_s}{L_s}\omega_r\psi_m
\end{bmatrix}
\end{aligned}
\tag{1.21}
```
```math
g=|i^{*}_{d}-i^{p}_{d}(k+1)|+|i^{*}_{q}-i^{p}_{q}(k+1)|
\tag{1.22}
```
## 1.4. Basic Principle of PM BLDC Drives
### 1.4.1. Modeling
```math
\begin{bmatrix}
 v_A    \\
 v_B    \\
 v_C    \\
\end{bmatrix}
=
\begin{bmatrix}
 R_s    &0      &0    \\
 0      &R_s    &0    \\
 0      &0      &R_s  \\
\end{bmatrix}
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+P
\begin{bmatrix}
 L_{AA}      &M_{AB}    &M_{AC}    \\
 M_{BA}      &L_{BB}    &M_{BC}    \\
 M_{CA}      &M_{CB}    &L_{CC}  \\
\end{bmatrix}
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+
\begin{bmatrix}
 e_A    \\
 e_B    \\
 e_C    \\
\end{bmatrix}
\tag{1.23}
```
对于表贴式永磁体电机，假设电感不随转子位置变化而变化，且三相对称，则互感和自感可以表示为
```math
L_{AA}=L_{BB}=L_{CC}=L,
M_{AB}=M_{BA}=M_{BC}=M_{CB}=M_{AC}=M_{CA}=M
\tag{1.24}
```
```math
\begin{bmatrix}
 v_A    \\
 v_B    \\
 v_C    \\
\end{bmatrix}
=
\begin{bmatrix}
 R_s    &0      &0    \\
 0      &R_s    &0    \\
 0      &0      &R_s  \\
\end{bmatrix}
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+P
\begin{bmatrix}
 L      &M    &M    \\
 M      &L    &M    \\
 M      &M    &L  \\
\end{bmatrix}
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+
\begin{bmatrix}
 e_A    \\
 e_B    \\
 e_C    \\
\end{bmatrix}
\tag{1.25}
```

```math
\begin{bmatrix}
 v_A    \\
 v_B    \\
 v_C    \\
\end{bmatrix}
=
\begin{bmatrix}
 R_s    &0      &0    \\
 0      &R_s    &0    \\
 0      &0      &R_s  \\
\end{bmatrix}
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+
\begin{bmatrix}
 L-M    &0      &0    \\
 0      &L-M    &0    \\
 0      &0      &L-M  \\
\end{bmatrix}p
\begin{bmatrix}
 i_A    \\
 i_B    \\
 i_C    \\
\end{bmatrix}+
\begin{bmatrix}
 e_A    \\
 e_B    \\
 e_C    \\
\end{bmatrix}
\tag{1.26}
```
### 1.4.2. Control Strategies
## 1.5. Comparison Between PM BLDC (PMSM) and BLAC Drives
### 1.5.1. Square-Wave Back-EMF Machine
```math
T_{m\_BLDC}=\frac{2E_mI_m}{\omega_m}
\tag{1.27}
```
### 1.5.2. Sine-Wave Back-EMF Machine
```math
T_{m\_BLAC}=\frac{3E_mI_m}{2\omega_m}
\tag{1.28}
```

## 1.6. Sensorless Control Techniques and Applications


### 1.6.1. Applications
## 1.7. Scope of This Book
# 2. Sensorless control methods
## 2.1. Introduction
基于基波模型的五位置传感器控制技术分为ABCD4个部分
- A部分 
  - 静止坐标系
  - **同步坐标系**，无传感技术主要集中在此坐标系
- B部分
  - 针对SPMSM和IPMSM的五位置传感器控制基本方法
- C部分
  - 在估算了BEMF和Flux误差之后，需要用观测器得到位置和速度信息
- D部分介绍了一些实际的应用问题
  - 交叉耦合电感
  - 反电动势和电流谐波
  - 参数不匹配
  - 参数不对成等

## 2.2. Flux-Linkage-Based Method
### 2.2.1. Flux-Linkage Method for Non-salient PMSMs
用于非凸极PMSM的磁链法
```math
\begin{bmatrix}
 \psi_{\alpha}\\
 \psi_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
 L_\alpha&0\\
 0&L_\beta\\
\end{bmatrix}
 +
\begin{bmatrix}
 \psi_{m\alpha}\\
 \psi_{m\beta}\\
\end{bmatrix}
\\
\begin{bmatrix}
 \psi_{m\alpha}\\
 \psi_{m\beta}\\
\end{bmatrix}
=\psi_{m}
\begin{bmatrix}
 cos\theta_{r}\\
 sin\theta_{r}\\
\end{bmatrix}
\tag{2.1}
```
* $\psi_{\alpha} \psi_{\beta}$是$\alpha \beta$轴定子磁链
* $\psi_{m\alpha} \psi_{m\beta}$是$\alpha \beta$轴永磁磁链
* $\theta_{r}$是转子位置
* $L_{\alpha} L_{\beta}$是SPMSM的相电感,并且$L_{\alpha} =L_{\beta}=L_s$
$$
\theta_r =
tan^{-1}\frac{\psi_{\beta}-L_{s}*i_{\beta}}{\psi_{\alpha}-L_{s}*i_{\alpha}} =
tan^{-1}\frac{\psi_{m\beta}}{\psi_{m\alpha}}
\tag{2.2}$$
$$
\psi_{\alpha}
=\int(v_{\alpha}-i_{\alpha}*R_s)*dt \\
\psi_{\beta}
=\int(v_{\beta}-i_{\beta}*R_s)*dt 
\tag{2.3}$$
然而，在实际应用中，纯积分的实现必须考虑一些实际问题，比如初值问题和漂移问题，见第三章详细讨论
### 2.2.2. Active Flux-Linkage Method for Salient PMSMs
<font color=red>这里2.4和第一章节的1.7 1.8完全不同，没有搞懂，而且和论文的写法也不同</font>  
<font color=red>这里这里需要用clark变换计算一下</font>  

```math
\begin{bmatrix}
 \psi_{\alpha}\\
 \psi_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
    L_{sa}+L_{sd}cos(2\theta_r)    &   L_{sa}sin(2\theta_r)         \\
    L_{sa}sin(2\theta_r)           &   L_{sa}-L_{sd}cos(2\theta_r)  \\
\end{bmatrix}
\begin{bmatrix}
 i_{\alpha}\\
 i_{\beta}\\
\end{bmatrix}
 +\psi_m
\begin{bmatrix}
 \cos{\theta_r}\\
 \sin{\theta_r}\\
\end{bmatrix}
\tag{2.4}
```
```math
L_{sa}=\frac{L_q+L_d}{2}\\
L_{sd}=\frac{L_q-L_d}{2}
```
```math
\begin{bmatrix}
 \psi_{\alpha}\\
 \psi_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
    \frac{L_d+L_q}{2}-\frac{L_d-L_q}{2}cos(2\theta_r)    &   \frac{L_d+L_q}{2}sin(2\theta_r)         \\
    \frac{L_d+L_q}{2}sin(2\theta_r)           &   \frac{L_d+L_q}{2}+\frac{L_d-L_q}{2}cos(2\theta_r)  \\
\end{bmatrix}
\begin{bmatrix}
 i_{\alpha}\\
 i_{\beta}\\
\end{bmatrix}
 +\psi_m
\begin{bmatrix}
 \cos{\theta_r}\\
 \sin{\theta_r}\\
\end{bmatrix}
\tag{2.4}
```
```math
\begin{bmatrix}
 \psi_{\alpha}    \\
 \psi_{\beta}    \\
\end{bmatrix}=
\begin{bmatrix}
 \frac{L_d+L_q}{2}+\frac{L_d-L_q}{2}cos(2\theta_r)   &\frac{L_d-L_q}{2}cos(2\theta_r)      \\
 \frac{L_d-L_q}{2}cos(2\theta_r)    &\frac{L_d+L_q}{2}-\frac{L_d-L_q}{2}cos(2\theta_r)    \\
\end{bmatrix}*
\begin{bmatrix}
 i_{\alpha}    \\
 i_{\beta}    \\
\end{bmatrix}+\psi_{m}
\begin{bmatrix}
 cos{\theta_r}    \\
 sin{\theta_r}    \\
\end{bmatrix}
\tag{1.7}
```
```math
\begin{bmatrix}
 \psi_{\alpha}\\
 \psi_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
    \frac{L_d+L_q}{2}+\frac{L_d-L_q}{2}cos(2\theta_r) &\frac{L_d-L_q}{2}sin(2\theta_r)         \\
    \frac{L_d-L_q}{2}sin(2\theta_r)            &\frac{L_d+L_q}{2}-\frac{L_d-L_q}{2}cos(2\theta_r)  \\
\end{bmatrix}
\begin{bmatrix}
 i_{\alpha}\\
 i_{\beta}\\
\end{bmatrix}
 +\psi_m
\begin{bmatrix}
 \cos{\theta_r}\\
 \sin{\theta_r}\\
\end{bmatrix}
\tag{2.4}
```
[有效磁链](https://blog.csdn.net/weixin_40297883/article/details/121064086)[ieee原文](https://ieeexplore.ieee.org/document/4689434)
文献将所有凸极电机统一为虚拟的非凸极电机，从而简化位置估算$I_s=\sqrt{i^2_d+i^2_q}$,从而

```math
\psi_{a}=\psi_m+(L_d-L_q)i_d
\tag{2.5}
```
```math
\begin{bmatrix}
    \psi_{\alpha}\\
    \psi_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
    L_q    &   0    \\
    0      &   L_d  \\
\end{bmatrix}
\begin{bmatrix}
 i_{\alpha}\\
 i_{\beta}\\
\end{bmatrix}
 +\psi_a
\begin{bmatrix}
 \cos{\theta_r}\\
 \sin{\theta_r}\\
\end{bmatrix}
\tag{2.6}
```

```math
\theta_{r}
=arctan^{-1}\frac{\psi_\beta-L_q*i_\beta}{\psi_\alpha-L_q*i_\alpha}
\tag{2.7}
```

```math
\begin{bmatrix}
    \psi_{d}\\
    \psi_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    L_q    &   0    \\
    0      &   L_q  \\
\end{bmatrix}
\begin{bmatrix}
 i_{d}\\
 i_{q}\\
\end{bmatrix}
 +
\begin{bmatrix}
 \psi_{a}\\
 0\\
\end{bmatrix}
\tag{2.8}
```
```math
\begin{bmatrix}
    \hat{\psi}_{d}\\
    \hat{\psi}_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    L_q    &   0    \\
    0      &   L_q  \\
\end{bmatrix}
\begin{bmatrix}
 \hat{i}_{d}\\
 \hat{i}_{q}\\
\end{bmatrix}
 +\psi_{a}
\begin{bmatrix}
 cos\Delta\theta\\
 sin\Delta\theta\\
\end{bmatrix}
\tag{2.9}
```
通过观测器，可以将$q$轴磁链$\hat{\psi}_q$控制为0,以得到转子位置
## 2.3. Back-EMF-Based Method
```math
\begin{bmatrix}
    e_{\alpha}\\
    e_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
 v_{\alpha}\\
 v_{\beta}\\
\end{bmatrix}-
\begin{bmatrix}
    R_s+pL_\alpha   &   0    \\
    0               &   R_s+pL_\beta  \\
\end{bmatrix}
\begin{bmatrix}
 i_{\alpha}\\
 i_{\beta}\\
\end{bmatrix}
 =\omega_r\psi_m
\begin{bmatrix}
 -sin\theta_r\\
 cos\theta_r\\
\end{bmatrix}
\tag{2.10}
```
文献5提出间接位置估算发发
文献6/7提出扩展反电动势法
### 2.3.1. Back-EMF Method for Non-salient PMSMs

```math
\begin{bmatrix}
    v_{d}\\
    v_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_s       &   -\omega_rL_s    \\
    \omega_rL_s    &   R_s+pL_s  \\
\end{bmatrix}
\begin{bmatrix}
 i_{d}\\
 i_{q}\\
\end{bmatrix}+
\begin{bmatrix}
 0\\
 \omega_r\psi_m\\
\end{bmatrix}
\tag{2.11}
```
```math
\begin{bmatrix}
    \hat{v}_{d}\\
    \hat{v}_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_s       &   -\omega_rL_s    \\
    \omega_rL_s    &   R_s+pL_s  \\
\end{bmatrix}
\begin{bmatrix}
 \hat{i}_{d}\\
 \hat{i}_{q}\\
\end{bmatrix}+
\begin{bmatrix}
 \hat{E}_{d}\\
 \hat{E}_{q}\\
\end{bmatrix}
,
\begin{bmatrix}
 \hat{E}_{d}\\
 \hat{E}_{q}\\
\end{bmatrix}
=\omega_r\psi_m
\begin{bmatrix}
 -sin\Delta\theta\\
 cos\Delta\theta\\
\end{bmatrix}
\tag{2.12}
```
```math
\Delta\hat{\theta}=tan^{-1}(-\frac{\hat{E}_d}{\hat{E}_q})\approx -\frac{\hat{E}_d}{\hat{E}_q}
\tag{2.13}
```
如式(2.12)所示，在得到$\Delta\hat{\theta}$后，利用PLL等位置观测器即可通过将$\Delta\hat{\theta}$控制为0来估算转子位置


### 2.3.2. Extended Back-EMF Method for Salient PMSMs
#### 2.3.2.1. In Synchronous Reference Frame
```math
\begin{bmatrix}
    v_{d}\\
    v_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_d        &   -\omega_rL_q  \\
    \omega_rL_d     &   R_s+pL_q      \\
\end{bmatrix}
\begin{bmatrix}
 i_{d}\\
 i_{q}\\
\end{bmatrix}+
\begin{bmatrix}
 0\\
 \omega_r\psi_m\\
\end{bmatrix}
\tag{2.14}
```
```math
\begin{bmatrix}
    v_{d}\\
    v_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_d        &   -\omega_rL_q  \\
    \omega_rL_d     &   R_s+pL_q      \\
\end{bmatrix}
\begin{bmatrix}
 i_{d}\\
 i_{q}\\
\end{bmatrix}+
\begin{bmatrix}
 0\\
 E_{ex}\\
\end{bmatrix}
\tag{2.15}
```
```math
 E_{ex}=\omega_r\psi_m+(L_d-L_q)(\omega_ri_d-pi_q)
\tag{2.16}
```

```math
\begin{bmatrix}
    \hat{v}_{d}\\
    \hat{v}_{q}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_d        &   -\omega_rL_q  \\
    \omega_rL_d     &   R_s+pL_q      \\
\end{bmatrix}
\begin{bmatrix}
 \hat{i}_{d}\\
 \hat{i}_{q}\\
\end{bmatrix}+
\begin{bmatrix}
 \hat{E}_{ex,d}\\
 \hat{E}_{ex,q}\\
\end{bmatrix}
\tag{2.17}
```
```math
\begin{bmatrix}
  \hat{E}_{ex,d}\\
  \hat{E}_{ex,q}\\
\end{bmatrix} =\hat{E}_{ex}
\begin{bmatrix}
    -sin\Delta\theta \\
    cos\Delta\theta \\
\end{bmatrix}+\Delta\omega L_q
\begin{bmatrix}
 \hat{i}_{d}\\
 -\hat{i}_{q}\\
\end{bmatrix}
\tag{2.18}
```

```math
\Delta\hat{\theta}=tan^{-1}(-\frac{\hat{E}_{ex,d}}{\hat{E}_{ex,q}})\approx -\frac{\hat{E}_{ex,d}}{\hat{E}_{ex,q}}
\tag{2.19}
```
#### 2.3.2.2. In Stationary Reference Frame
```math
\begin{bmatrix}
    {v}_{\alpha}\\
    {v}_{\beta}\\
\end{bmatrix} =
\begin{bmatrix}
    R_s+pL_d        &   -\omega_r(L_q-L_d)  \\
    \omega_r(L_q-L_d)     &   R_s+pL_q      \\
\end{bmatrix}
\begin{bmatrix}
  {i}_{\alpha}\\
  {i}_{\beta}\\
\end{bmatrix}+
\begin{bmatrix}
 {e}_{ex,\alpha}\\
 {e}_{ex,\beta}\\
\end{bmatrix}
\tag{2.20}
```
```math
\begin{bmatrix}
  {e}_{ex,\alpha}\\
 {e}_{ex,\beta}\\
\end{bmatrix} ={E}_{ex}
\begin{bmatrix}
    -sin\theta \\
    cos\theta \\
\end{bmatrix}
\tag{2.21}
```
然后通过反正切可以直接计算出转子位置
```math
{\theta_r}=arctan^{-1}(-\frac{{e}_{ex,\alpha}}{{e}_{ex,\beta}})
\tag{2.22}
```
另一种选择是利用PLL来估计转子位置，这种发发通常可以降低由反正切计算所带来的噪声问题，锁相环的详细内容将在2.5中讨论
## 2.4. Comparison
### 2.4.1. BEMF and flux
### 2.4.2. extend BEMF and active flux
## 2.5. Position Observer
### 2.5.1. Arctangent Method
```math
{\theta_r}=-arctan(\frac{{e}_{\alpha}}{{e}_{\beta}}),
{\theta_r}=tan(\frac{{\psi}_{m\alpha}}{{\psi}_{m\beta}})
\tag{2.23}
```
### 2.5.2. Phase-Locked Loop
### 2.5.3. Simplified Extended Kalman Filter

