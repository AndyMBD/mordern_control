contents:  
[1. Sensorless control methods](#1-sensorless-control-methods)
- [1. Sensorless control methods](#1-sensorless-control-methods)
  - [1.1. Introduction](#11-introduction)
  - [1.2. Flux-Linkage-Based Method](#12-flux-linkage-based-method)
    - [1.2.1. Flux-Linkage Method for Non-salient PMSMs](#121-flux-linkage-method-for-non-salient-pmsms)
    - [1.2.2. Active Flux-Linkage Method for Salient PMSMs](#122-active-flux-linkage-method-for-salient-pmsms)
  - [1.3. Back-EMF-Based Method](#13-back-emf-based-method)
    - [1.3.1. Back-EMF Method for Non-salient PMSMs](#131-back-emf-method-for-non-salient-pmsms)
    - [1.3.2. Extended Back-EMF Method for Salient PMSMs](#132-extended-back-emf-method-for-salient-pmsms)
      - [1.3.2.1. In Synchronous Reference Frame](#1321-in-synchronous-reference-frame)
      - [1.3.2.2. In Stationary Reference Frame](#1322-in-stationary-reference-frame)
  - [1.4. Comparison](#14-comparison)
    - [1.4.1. BEMF and flux](#141-bemf-and-flux)
    - [1.4.2. extend BEMF and active flux](#142-extend-bemf-and-active-flux)
  - [1.5. Position Observer](#15-position-observer)
    - [1.5.1. Arctangent Method](#151-arctangent-method)
    - [1.5.2. Phase-Locked Loop](#152-phase-locked-loop)
    - [1.5.3. Simplified Extended Kalman Filter](#153-simplified-extended-kalman-filter)
# 1. Sensorless control methods
## 1.1. Introduction
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
  

<img title="002_Sensorless_Control_Overview" src="./pic/Chapter_02_Introduction.png" width = 600 height = 600>

## 1.2. Flux-Linkage-Based Method
### 1.2.1. Flux-Linkage Method for Non-salient PMSMs
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
### 1.2.2. Active Flux-Linkage Method for Salient PMSMs
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
## 1.3. Back-EMF-Based Method
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
### 1.3.1. Back-EMF Method for Non-salient PMSMs

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


### 1.3.2. Extended Back-EMF Method for Salient PMSMs
#### 1.3.2.1. In Synchronous Reference Frame
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
#### 1.3.2.2. In Stationary Reference Frame
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
## 1.4. Comparison
### 1.4.1. BEMF and flux
### 1.4.2. extend BEMF and active flux
## 1.5. Position Observer
### 1.5.1. Arctangent Method
```math
{\theta_r}=-arctan(\frac{{e}_{\alpha}}{{e}_{\beta}}),
{\theta_r}=tan(\frac{{\psi}_{m\alpha}}{{\psi}_{m\beta}})
\tag{2.23}
```
### 1.5.2. Phase-Locked Loop
### 1.5.3. Simplified Extended Kalman Filter


References  
* [1]: R. Wu and G. R. Slemon, “A permanent magnet motor drive without a shaft
sensor,” IEEE Trans. Ind. Appl., vol. 27, no. 5, pp. 1005–1011, Sep. 1991. 
* [2]: J. Hu and B. Wu, “New integration algorithms for estimating motor flux over a wide
speed range,” IEEE Trans. Power Electron., vol. 13, no. 5, pp. 969–977, Sep. 1998.
* [3]: I. Boldea, M. C. Paicu, and G. Andreescu, “Active flux concept for motion-sensorless
unified ac drives,****” IEEE Trans. Power Electron., vol. 23, no. 5, pp. 2612–2618,
Sep. 2008.
* [4]: J. X. Shen, Z. Q. Zhu, and D. Howe, “Improved speed estimation in sensorless PM
brushless ac drives,” IEEE Trans. Ind. Appl., vol. 38, no. 4, pp. 1072–1080, Jul. 2002.
* [5]: N. Matsui, “Sensorless PM brushless dc motor drives,” IEEE Trans. Ind. Electron.,
vol. 43, no. 2, pp. 300–308, Apr. 1996.
* [6]: S. Morimoto, K. Kawamoto, M. Sanada, and Y. Takeda, “Sensorless control strategy
for salient-pole PMSM based on extended EMF in rotating reference frame,” IEEE
Trans. Ind. Appl., vol. 38, no. 4, pp. 1054–1061, Jul. 2002.
* [7]: Z. Chen, M. Tomita, S. Doki, and S. Okuma, “An extended electromotive force
model for sensorless control of interior permanent-magnet synchronous motors,”
IEEE Trans. Ind. Electron., vol. 50, no. 2, pp. 288–295, Apr. 2003.
* [8]: H. Kim, M. C. Harke, and R. D. Lorenz, “Sensorless control of interior permanentmagnet
machine drives with zero-phase lag position estimation,” IEEE Trans. Ind.
Appl., vol. 39, no. 6, pp. 1726–1733, Nov. 2003.
* [9]: G. Wang, R. Yang, and D. Xu, “DSP-based control of sensorless IPMSM drives for
wide-speed-range operation,” IEEE Trans. Ind. Electron., vol. 60, no. 2, pp. 720–727,
Feb. 2013.
* [10]: L. Harnefors, “Speed estimation from noisy resolver signals,” in 1996 6th Int. Conf.
Power Electron. Variable Speed Drives (Conf. Publ. No. 429), pp. 279–282, Sep. 1996.
* [11]: Y. Liu, Z. Q. Zhu, Y. F. Shi, and D. Howe, “Sensorless direct torque control of a
permanent magnet brushless ac drive via an extended Kalman filter,” in 2nd Int.
Conf. Power Electron, Mach. Drives (PEMD 2004), vol. 1, Mar. 2004, pp. 303–307.
* [12]: A. H. Almarhoon and Z. Q. Zhu, “Influence of back-EMF and current harmonics on
position estimation accuracy of permanent magnet synchronous machine,” in 2014
17th Int. Conf. Elect. Mach. Syst. (ICEMS), pp. 2728–2733, Oct. 2014.
* [13]: J. X. Shen, Z. Q. Zhu, and D. Howe, “Improved speed estimation in sensorless PM