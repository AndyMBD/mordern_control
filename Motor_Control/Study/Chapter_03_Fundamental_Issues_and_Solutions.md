contents:  
[1. Sensorless control methods](#1-sensorless-control-methods)
- [1. Fundamental Model-Based Sensorless Control Issues and Solutions](#1-fundamental-model-based-sensorless-control-issues-and-solutions)
  - [1.1. Introduction](#11-introduction)
  - [1.2. 积分和滤波](#12-积分和滤波)
    - [1.2.1. 初值](#121-初值)
    - [1.2.2. 漂移](#122-漂移)
    - [1.2.3. 延迟](#123-延迟)
  - [1.3. 反电动势及电流谐波](#13-反电动势及电流谐波)
    - [1.3.1. 反电动势谐波的影响](#131-反电动势谐波的影响)
    - [1.3.2. 电流谐波的影响](#132-电流谐波的影响)
  - [1.4. 交叉饱和](#14-交叉饱和)
    - [1.4.1. 对位置估计的影响](#141-对位置估计的影响)
    - [1.4.2. 考虑交叉饱和的无位置传感器控制](#142-考虑交叉饱和的无位置传感器控制)
  - [1.5. 参数不匹配](#15-参数不匹配)
    - [1.5.1. 对位置估计的影响](#151-对位置估计的影响)
    - [1.5.2. 参数不匹配下的位置矫正方法](#152-参数不匹配下的位置矫正方法)
      - [1.5.2.1. 针对q轴电感不匹配的q轴注入法](#1521-针对q轴电感不匹配的q轴注入法)
      - [1.5.2.2. 针对电阻不匹配的d轴注入法](#1522-针对电阻不匹配的d轴注入法)
      - [1.5.2.3. 注入幅值计算](#1523-注入幅值计算)
      - [1.5.2.4. 基于LMS算法的位置误差校正策略](#1524-基于lms算法的位置误差校正策略)
  - [1.6. 参数不对称](#16-参数不对称)
    - [1.6.1. 不对称数学建模](#161-不对称数学建模)
      - [1.6.1.1. 电阻不对称](#1611-电阻不对称)
      - [1.6.1.2. 电感不对称](#1612-电感不对称)
      - [1.6.1.3. 反电动势不对称](#1613-反电动势不对称)
    - [1.6.2. 对位置估计的影响](#162-对位置估计的影响)
    - [1.6.3. 谐波的抑制策略](#163-谐波的抑制策略)
  - [1.7. **适用于低速位置估计的电压和电流模型**](#17-适用于低速位置估计的电压和电流模型)
    - [1.7.1. 基于反电动势模型的无位置传感器控制](#171-基于反电动势模型的无位置传感器控制)
      - [1.7.1.1. 基于电压模型的方法](#1711-基于电压模型的方法)
      - [1.7.1.2. 基于电流模型的方法](#1712-基于电流模型的方法)
      - [1.7.1.3. 基于简化模型的方法](#1713-基于简化模型的方法)
    - [1.7.2. 基于磁链的无位置传感器控制](#172-基于磁链的无位置传感器控制)
      - [1.7.2.1. 电压磁链模型](#1721-电压磁链模型)
      - [1.7.2.2. 电流磁链模型](#1722-电流磁链模型)
      - [1.7.2.3. 混合电压和电流磁链模型](#1723-混合电压和电流磁链模型)
- [2. References](#2-references)
# 1. Fundamental Model-Based Sensorless Control Issues and Solutions
## 1.1. Introduction
本章将分析讨论一些常见的实际问题并提供相应的解决方案
- 积分初值和漂移问题 
- 滤波器的相位延迟问题
- 反电动势及电流谐波
- 交叉饱和
- 参数不匹配
- 参数不对称
- 低速位置估计

## 1.2. 积分和滤波
### 1.2.1. 初值
用于非凸极PMSM的磁链法
```math
\left\{
  \begin{array}{l}
    \psi_{\alpha} = \int(v_{\alpha}-i_{\alpha}*R_s)dt+\psi_{\alpha}(0) \\
    \psi_{\beta}  = \int(v_{\beta}-i_{\beta}*R_s)dt +\psi_{\beta}(0)\\
  \end{array}
\right.
\tag{3.1}
```
```math
\left\{
  \begin{array}{l}
    \psi_{\alpha}(0)=\psi_{m\alpha}(0) \\
    \psi_{\beta}(0)=\psi_{m\beta}(0)\\
  \end{array}
\right.
\tag{3.2}
```
如果在磁链观测器开始工作之前将转子对准某个位置，即$\psi_{\alpha}(0) \psi_{\beta}(0)$是可以预先得到的，当使用正确的初始值时才不会存在偏差和位置误差
### 1.2.2. 漂移
观测的永磁体磁链矢量轨迹是个圆，但是轨迹所处的圆心在随时间不断地漂移，这个问题的原因是使用纯积分后，电流采样值中的任何直流偏置或误差都会被纯积分不断地放大，直到饱和，
为了解决这个问题，[参考文献5](#ref5)HPF高通滤波器应用于被积分的变量，HPF的传递函数$s/(s+\omega_c)$而纯积分的传递函数是$1/(s)$，所以从的传递函数变成了$1/(s+\omega_c)$，相当于将积分器替换为低通滤波器LPF，$\omega_c$是截止频率
```math
\left\{
  \begin{array}{l}
    \psi_{\alpha}(s)=\frac{1}{s+\omega_e}(v_\alpha-i_\alpha R_s)+\psi_{m\alpha}(0) \\
    \psi_{\beta}(s)=\frac{1}{s+\omega_e}(v_\beta-i_\beta R_s)+\psi_{m\beta}(0) \\
  \end{array}
\right.
\tag{3.3}
```
```math
\left\{
  \begin{array}{l}
    \psi_{\alpha}=\int[-\omega_c\psi_\alpha+(v_\alpha-i_\alpha R_s)]dt+\psi_{\alpha}(0) \\
    \psi_{\beta}=\int[-\omega_c\psi_\beta+(v_\beta-i_\beta R_s)]dt+\psi_{\beta}(0) \\
  \end{array}
\right.
\tag{3.4}
```
### 1.2.3. 延迟
尽管低通滤波器可以有效解决积分漂移问题，但是在位置估计过程中会引起不可避免地相位延迟，[参考文献2](#ref2)应用了带有延迟补偿的磁链观测器，
## 1.3. 反电动势及电流谐波
分析谐波对位置估计精度的影响
* 带有低通滤波器的传统磁链观测器
* 简化扩展卡尔曼滤波器的磁链观测器  
### 1.3.1. 反电动势谐波的影响
### 1.3.2. 电流谐波的影响
一般来说，引起定子电流谐波的主要原因  
* 电机结构
* 逆变器的非线性
## 1.4. 交叉饱和
交叉饱和效应，即视在互感，可以从dq轴磁链有限元结果中预测和建模或者直接由实测得到
### 1.4.1. 对位置估计的影响
### 1.4.2. 考虑交叉饱和的无位置传感器控制
## 1.5. 参数不匹配
### 1.5.1. 对位置估计的影响
### 1.5.2. 参数不匹配下的位置矫正方法
#### 1.5.2.1. 针对q轴电感不匹配的q轴注入法
#### 1.5.2.2. 针对电阻不匹配的d轴注入法
#### 1.5.2.3. 注入幅值计算
#### 1.5.2.4. 基于LMS算法的位置误差校正策略
最小均方(LMS)算法
## 1.6. 参数不对称
### 1.6.1. 不对称数学建模
#### 1.6.1.1. 电阻不对称
#### 1.6.1.2. 电感不对称
#### 1.6.1.3. 反电动势不对称
### 1.6.2. 对位置估计的影响
### 1.6.3. 谐波的抑制策略
## 1.7. **适用于低速位置估计的电压和电流模型**
### 1.7.1. 基于反电动势模型的无位置传感器控制
#### 1.7.1.1. 基于电压模型的方法
#### 1.7.1.2. 基于电流模型的方法
#### 1.7.1.3. 基于简化模型的方法
### 1.7.2. 基于磁链的无位置传感器控制
#### 1.7.2.1. 电压磁链模型
#### 1.7.2.2. 电流磁链模型
#### 1.7.2.3. 混合电压和电流磁链模型

[参考文献1](#ref1)

# 2. References

<a id="ref1"></a>
1. J. Hu and B. Wu, "New integration algorithms for estimating motor flux over a wide speed range," *IEEE Trans. Power Electron.*, vol. 13, no. 5, pp. 969-977, Sep. 1998.

<a id="ref2"></a>
1. P. Wipasuramonton, Z. Q. Zhu, and D. Howe, "Sensorless vector control of nonsalient BLAC machines based on a modified rotor flux-linkage observer," in *2009 Int. Conf. Power Elect. Drive Syst. (PEDS)*, pp. 1056-1061, Nov. 2009.

<a id="ref3"></a>
1. G. R. Chen, J. Y. Chen, and S. C. Yang, "Implementation issues of flux linkage estimation on permanent magnet machine position sensorless drive at low speed," *IEEE Access*, vol. 7, pp. 164641-164649, 2019.

<a id="ref4"></a>
1. J. X. Shen, Z. Q. Zhu, and D. Howe, "Improved speed estimation in sensorless PM brushless ac drives," *IEEE Trans. Ind. Appl.*, vol. 38, no. 4, pp. 1072-1080, Jul. 2002.

<a id="ref5"></a>
1. H. Tajima and Y. Hori, "Speed sensorless field-orientation control of the induction machine," *IEEE Trans. Ind. Appl.*, vol. 29, no. 1, pp. 175-180, Jan. 1993.

1. Y. Liu, Z. Q. Zhu, Y. F. Shi, and D. Howe, "Sensorless direct torque control of a permanent magnet brushless ac drive via an extended Kalman filter," in *2nd Int. Conf. Power Elect., Mach. Drives (PEMD 2004)*, vol. 1, pp. 303-307, Mar. 2004.

2. A. H. Almarhoon and Z. Q. Zhu, "Influence of back-EMF and current harmonics on position estimation accuracy of permanent magnet synchronous machine," in *2014 17th Int. Conf. Elect. Mach. Syst. (ICEMS)*, pp. 2728-2733, Oct. 2014.

3. J. X. Shen and K. J. Tseng, "Analyses and compensation of rotor position detection error in sensorless PM brushless dc motor drives," *IEEE Trans. Energy Convers.*, vol. 18, no. 1, pp. 87-93, Mar. 2003.

4. Y. Li, Z. Q. Zhu, D. Howe, and C. M. Bingham, "Improved rotor position estimation in extended back-emf based sensorless PM brushless ac drives with magnetic saliency," in *2007 IEEE Int. Elect. Mach. Drives Conf.*, 2007, vol. 1, pp. 214-219.

5.  Z. Q. Zhu, Y. Li, D. Howe, C. M. Bingham, and D. Stone, "Influence of machine topology and cross-coupling magnetic saturation on rotor position estimation accuracy in extended back-emf based sensorless pm brushless ac drives," in *2007 IEEE Ind. Appl. Annu. Meeting*, pp. 2378-2385, Sep. 2007.

6.  S. Morimoto, K. Kawamoto, M. Sanada, and Y. Takeda, "Sensorless control strategy for salient-pole PMSM based on extended EMF in rotating reference frame," *IEEE Trans. Ind. Appl.*, vol. 38, no. 4, pp. 1054-1061, Jul. 2002.

7.  T. Y. Liu, Z. Q. Zhu, B. Shuang, Z. Y. Wu, D. A. Stone, and M. P. Foster, "An online position error correction method for sensorless control of permanent magnet synchronous machine with parameter mismatch," *IEEE Access*, vol. 9, pp. 135708-135722, 2021.

8.  K. Liu, Q. Zhang, J. Chen, Z. Q. Zhu, and J. Zhang, "Online multi-parameter estimation of nonsalient-pole PM synchronous machines with temperature variation tracking," *IEEE Trans. Ind. Electron.*, vol. 58, no. 5, pp. 1776-1788, May 2011.

9.  D. Reigosa, P. Garcia, F. Briz, D. Raca, and R. D. Lorenz, "Modeling and adaptive decoupling of high-frequency resistance and temperature effects in carrier-based sensorless control of PM synchronous machines," *IEEE Trans. Ind. Appl.*, vol. 46, no. 1, pp. 139-149, Jan./Feb. 2010.

10. T. Y. Liu, Z. Q. Zhu, Z. Y. Wu, D. A. Stone, and M. P. Foster, "Improved sensorless control method and asymmetric phase resistances determination for permanent magnet synchronous machines," *IEEE Trans. Ind. Appl.*, vol. 58, no. 3, pp. 3624-3636, May 2022.

11. M. W. Degner and R. D. Lorenz, "Using multiple saliencies for the estimation of flux, position, and velocity in AC machines," *IEEE Trans. Ind. Appl.*, vol. 34, no. 5, pp. 1097-1104, 1998.

12. X. M. Wu, Z. Q. Zhu, Z. Y. Wu, T. Y. Liu, and Y. X. Li, "Analysis and suppression of rotor eccentricity effects on fundamental model based sensorless control of permanent magnet synchronous machine," *IEEE Trans. Ind. Appl.*, vol. 56, no. 5, pp. 4896-4905, Sep. 2020.

13. T. C. Lin, Z. Q. Zhu, and J. M. Liu, "Improved rotor position estimation in sensorless-controlled permanent-magnet synchronous machines having asymmetric-EMF with harmonic compensation," *IEEE Trans. Ind. Elect.*, vol. 62, no. 10, pp. 6131-6139, Oct. 2015.

14. G. Wang, R. Yang, and D. Xu, "DSP-based control of sensorless IPMSM drives for wide-speed-range operation," *IEEE Trans. Ind. Electron.*, vol. 60, no. 2, pp. 720-727, Feb. 2013.

15. G. Wang, H. Zhan, G. Zhang, X. Gui, and D. Xu, "Adaptive compensation method of position estimation harmonic error for emf-based observer in sensorless IPMSM drives," *IEEE Trans. Power Electron.*, vol. 29, no. 6, pp. 3055-3064, Jun. 2014.

16. G. Zhang, G. Wang, D. Xu, and N. Zhao, "ADALINE-network-based PLL for position sensorless interior permanent magnet synchronous motor drives," *IEEE Trans. Power Electron.*, vol. 31, no. 2, pp. 1450-1460, Feb. 2016.

17. L. Wang, Z. Q. Zhu, H. Bin, and L. M. Gong, "Current harmonics suppression strategy for PMSM with non-sinusoidal back-emf based on adaptive linear neuron method," *IEEE Trans. Ind. Electron.*, vol. 67, no. 11, pp. 9164-9173, Nov. 2020.
