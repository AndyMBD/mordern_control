https://zhuanlan.zhihu.com/p/669132852
永磁同步电机的数学模型解析

永磁同步电机的数学模型解析
此处建立的模型基于以下假设条件：

* 忽略磁饱和、磁滞和涡流的影响
* 定转子绕组产生的气隙磁场正弦分布
* 定子三相坐绕组对称，转子对直轴和交轴对称
# 1. **ABC坐标系下的数学模型**
## 1.1. 磁链方程
```math
\begin{bmatrix}
   {{\psi _A}}\\ 
   {{\psi _B}}\\
   {{\psi _C}} 
\end{bmatrix}
 = 
\begin{bmatrix}
    {{L_{AA}}}&{{M_{AB}}}&{{M_{AC}}}\\ 
    {{M_{BA}}}&{{L_{BB}}}&{{M_{BC}}}\\ 
    {{M_{CA}}}&{{M_{CB}}}&{{L_{CC}}} 
\end{bmatrix}
\begin{bmatrix}
    {{i_A}}\\ 
    {{i_B}}\\ 
    {{i_C}} 
\end{bmatrix}
+ {\psi _{PM}}
\begin{bmatrix}
    {\cos {\theta _e}}\\
    {\cos ({\theta _e} - 2\pi /3)}\\
    {\cos ({\theta _e} + 2\pi /3)} 
\end{bmatrix}
```

定子三相绕组自感：
```math
\left\{
    \begin{array}{lr} 
    {L_{AA}} = {L_{s\sigma }} + {L_{sm}} + {L_{2s}}\cos 2\theta \\   
    {L_{BB}} = {L_{s\sigma }} + {L_{sm}} + {L_{2s}}\cos 2( {\theta - 2\pi /3} )\\
    {L_{CC}} = {L_{s\sigma }} + {L_{sm}} + {L_{2s}}\cos 2( {\theta + 2\pi /3} ) 
    \end{array}
\right.
```
其中：
* $L_{s\sigma}$ 为漏自感，即绕组产生的仅匝链自身的磁通形成的电感；
* $L_{sm}$ 为主磁通形成的电感的不变分量；
* $L_{2s}$ 为主磁通形成的电感的交变分量，和凸极电机dq轴磁阻不一致有关，在表贴式电机（SPMSM）中为0，主磁通为匝链定子两相绕组的磁通

定子三相绕组互感：
```math
\left\{
    \begin{array}{lr} 
    {{M_{AB}} = {M_{BA}} = - {M_{s\sigma }} - {L_{sm}}/2 + {L_{2s}}\cos 2(\theta - 2\pi /3)}\\
    {{M_{AC}} = {M_{CA}} = - {M_{s\sigma }} - {L_{sm}}/2 + {L_{2s}}\cos 2(\theta + 2\pi /3)}\\
    {{M_{BC}} = {M_{CB}} = - {M_{s\sigma }} - {L_{sm}}/2 + {L_{2s}}\cos 2(\theta )} 
    \end{array}
\right.
```
## 1.2. 电压方程
```math
\begin{bmatrix}
     v_A    \\ 
     v_B    \\ 
     v_C
\end{bmatrix}
= {R_s}
\begin{bmatrix}{}
   i_A\\
   i_B\\
   i_C 
\end{bmatrix} 
+ \frac{d}{{dt}}
\begin{bmatrix} 
    \psi _A\\
    \psi _B\\
    \psi _C
\end{bmatrix}
```
## 1.3. 转矩方程
```math
{T_e} = \frac{1}{2}{p_n}\frac{\partial }{{\partial {\theta _m}}}(\vec i_{3s}^T{\vec \psi _{3s}})
```
## 1.4. 机械运动方程
```math
J\frac{{d{\omega _m}}}{{dt}} = {T_e} - {T_L} - B{\omega _m}
```
# 2. PMSM的综合矢量模型  
综合矢量最初是来自磁场叠加原理，将空间中的磁链矢量进行矢量合成，得到气隙总磁链。为了将方程推广到综合矢量的形式下，对于电压、电流等物理量，也提出综合矢量的概念。综合矢量的定义为：
```math
\vec X = {X_A} + a{X_B} + {a^2}{X_C},\;\;( {a = {e^{j\frac{{2\pi }}{3}}}} )
```



## 2.1. 磁链方程
根据ABC坐标系下的磁链方程，电感矩阵系数表达式，**假设零轴电流为0**，推导出：
```math
\begin{aligned}
{\psi _A} &=({L_{s\sigma }} + {M_{s\sigma }} + \frac{3}{2}{L_{sm}}){i_A} + {L_{2s}}
 [\cos 2{\theta _e}{i_A} + \cos ({2{\theta _e} - 2\pi /3}){i_B} + \cos(2{\theta _e} + 2\pi /3){i_C}]\\ 
{\psi _B} &=({L_{s\sigma }} + {M_{s\sigma }} + \frac{3}{2}{L_{sm}}){i_B} + {L_{2s}}[\cos(2{\theta _e}- 2\pi /3) {i_A} + \cos  {2{\theta _e} + 2\pi /3} {i_B} + \cos {2\theta _e}{i_C} ]\\ 
{\psi _C} &=({L_{s\sigma }} + {M_{s\sigma }} + \frac{3}{2}{L_{sm}}){i_C} + {L_{2s}}[ {\cos(2{\theta _e} + 2\pi /3) {i_A} + \cos 2{\theta _e}{i_B} + \cos(2{\theta _e} - 2\pi /3) {i_C}} ] 
\end{aligned}
```
由公式：
```math
\cos {\theta _e} + \cos ( {{\theta _e} - 2\pi /3} )a + \cos  (\theta _e + 2\pi /3) {a^2} = \frac{3}{2}{e^{j{\theta _e}}}\;,\; {a = {e^{j\frac{{2\pi }}{3}}}} 
```
得到以综合矢量表示的磁链方程：
```math
\begin{aligned}
{\vec \psi }_{ABC} 
&=
({L_{s\sigma }} + {M_{s\sigma }} + \frac{3}{2}{L_{sm}}){{\vec i}_{ABC}} + \frac{3}{2}{L_{2s}}{e^{j2{\theta _e}}}{{\vec i}_{ABC}}^* + {\psi _{PM}}{e^{j{\theta _e}}}  \\
&=
{L_0}{{\vec i}_{ABC}} + {L_1}{e^{j2{\theta _e}}}{{\vec i}_{ABC}}^* + {\psi _{PM}}{e^{j{\theta _e}}} \\
\end{aligned}

```

此处需要注意综合矢量在三相分别乘以旋转因子 
$a$ 之后还需再乘以2/3作等幅值变换，*表示共轭复数。上式中的下标ABC表示这是在ABC三相坐标系下观测到的物理量合成的综合矢量，实际上，在静止坐标系下观测得到的物理量合成的综合矢量总是满足上述方程，可以表示为：
```math
\vec {\psi}_s^0 = {L_0}\vec{i}_s^0 + {L_1}{e^{j2{\theta _e}}}[{\vec i_s^0}^*] + {\psi _{PM}}{e^{j{\theta _e}}}
```
其中下标s表示这是定子侧的物理量，上标0表示这是静止坐标系下（转速为0的坐标系下）的物理量。

对上式进行旋转变换，即左右同乘以旋转因子 
${e^{ - j{\theta _e}}}$ ，注意到：
```math
[\vec {i}_s^{\omega _e}]^* = e^{j{\theta _e}}[ {\vec i_s^0} ]^*
```
可得到旋转坐标系下的综合矢量形式的磁链方程：
```math
\vec \psi _s^{\omega _e} = {L_0}\vec i_s^{\omega _e} + {L_1}{[ {\vec i_s^{{\omega _e}}}]^*} + {\psi _{PM}}
```
其中上标 

$\omega_e$ 表示这是在以电角速度 
$\omega$
$e$
$\omega_e$ 旋转的同步旋转坐标系下观测得到的物理量。



## 2.2. 电压方程
根据三相电压方程式，得静止坐标系下的以综合矢量表示的电压方程：
```math
\vec{v}_s^0 = {R_s}\vec{i}_s^0 + \frac{d}{{dt}}\vec{\psi} _s^0
```
变换到旋转坐标系下，左右同乘以旋转因子 
${e^{ - j{\theta _e}}}$ ，得到：
```math
\vec{v}_s^{{\omega _e}} = {R_s}\vec{i}_s^{{\omega_e}} +\frac{d}{{dt}}\vec{\psi}_s^{{\omega _e}} + j{\omega _e}\vec {\psi} _s^{{\omega _e}}
```


# 3. $\alpha\beta$ 坐标系下的数学模型
```math
 {X_\alpha } + j{X_\beta } = \vec X_s^0 = \frac{2}{3}( {{X_A} + a{X_B} + {a^2}{X_C}} )\\ {X_d} + j{X_q} = \vec X_s^{{\omega _e}} = {e^{ - j{\theta _e}}}\vec X_s^0 = \frac{2}{3}{e^{ - j{\theta _e}}}( {{X_A} + a{X_B} + {a^2}{X_C}} )\\ 
 ( {a = {e^{j2\pi /3}}} ) 
```
Park变换矩阵：
```math
{T_{Park}} = \frac{2}{3}
\begin{bmatrix}
   \cos{\theta_e}   &\cos({\theta_e}-2\pi/3)   &\cos({\theta _e} + 2\pi /3) \\ 
   -\sin{\theta_e}  &-\sin({\theta_e}-2\pi/3)  &-\sin({\theta _e} + 2\pi /3)\\ 
   {1/2}            &{1/2}&{1/2} 
\end{bmatrix}
```
Park逆变换矩阵：
```math
{T_{park}}={T_{park}}^{ - 1} = 
\begin{bmatrix}
 {\cos {\theta_e}}          &{ - \sin {\theta_e}}           &1\\
 {\cos{{\theta _e}-2\pi/3}} &{-\sin{{\theta _e}-2\pi/3}}    &1\\
 {\cos{{\theta _e}+2\pi/3}} &{-\sin{{\theta _e}+2\pi/3}}    &1
\end{bmatrix}
```


## 3.1. $\alpha\beta$ 磁链方程 
对静止坐标系下的综合矢量形式的磁链方程式进行如下代换：

$\vec{X}_s^0 = {X_\alpha } + j{X_\beta }$

得到：
```math
{\psi _\alpha } + j{\psi _\beta}= {L_0}( {{i_\alpha } + j{i_\beta }} ) + {L_1}( {\cos 2{\theta _e} + j\sin 2{\theta _e}} )( {{i_\alpha } - j{i_\beta }} ) + {\psi _{PM}}( {\cos {\theta _e} + j\sin {\theta _**e**}} )
```
写成标量方程和矩阵形式：
```math
{\psi _\alpha } = {L_0}{i_\alpha } + {L_1}(\cos 2{\theta _e}{i_\alpha } + \sin 2{\theta _e}{i_\beta })+\psi _{PM}\cos {\theta _e}\\ 
{\psi _\beta } = {L_0}{i_\beta} + {L_1}(\sin 2{\theta _e}{i_\alpha } - \cos 2{\theta _e}{i_\beta }) + \psi _{PM}\sin {\theta _e}
```
```math
\begin{bmatrix}
    {\psi _\alpha }\\ 
    {\psi _\beta } 
\end{bmatrix}
= {L_0}
\begin{bmatrix}
    {i_\alpha }\\
    {i_\beta }
\end{bmatrix}
+ {L_1}
\begin{bmatrix}
    {\cos 2{\theta _e}}&{\sin 2{\theta _e}}\\ 
    {\sin 2{\theta _e}}&{ - \cos 2{\theta _e}}
\end{bmatrix}
\begin{bmatrix}
    {i_\alpha }\\ 
    {i_\beta }
\end{bmatrix}
+ {\psi _{PM}}
\begin{bmatrix}
    \cos {\theta _e}\\ 
    \sin {\theta _e}
\end{bmatrix}
```
转换成矩阵形式
```math
\begin{bmatrix}
    {\psi _\alpha }\\ 
    {\psi _\beta } 
\end{bmatrix}
= 
\begin{bmatrix}
    {L_0+L_1\cos 2{\theta _e}}    &L_1{\sin 2{\theta _e}}\\ 
    {L_0\sin 2{\theta _e} }            &L_0-L_1{\cos 2{\theta _e}}
\end{bmatrix}
\begin{bmatrix}
    {i_\alpha }\\ 
    {i_\beta }
\end{bmatrix}
+ {\psi _{PM}}
\begin{bmatrix}
    \cos {\theta _e}\\ 
    \sin {\theta _e}
\end{bmatrix}
```

## 3.2. $\alpha\beta$电压方程
对于综合矢量形式的静止坐标系下的电压方程进行代换，方法和磁链方程相同，然后将磁链方程代入，得：
```math
\begin{bmatrix}
    {{v_\alpha }}\\
    {{v_\beta }}
\end{bmatrix}
={R_s}
\begin{bmatrix}
    {{i_\alpha }}\\
    {{i_\beta }}
\end{bmatrix}
+ \frac{d}{{dt}}
\begin{bmatrix}
    {{\psi _\alpha }}\\
    {{\psi _\beta }}
\end{bmatrix}\\
\begin{bmatrix}
    {{v_\alpha }}\\
    {{v_\beta }}
\end{bmatrix}
= {R_s}
\begin{bmatrix}
    {{i_\alpha }}\\
    {{i_\beta }}
\end{bmatrix}
{L_0}\frac{d}{{dt}}
\begin{bmatrix}
    {i_\alpha }\\ 
    {{i_\beta }}
\end{bmatrix}
+ {L_1}
\begin{bmatrix}
    {\cos 2{\theta _e}}&{\sin 2{\theta _e}}\\
    {\sin 2{\theta _e}}&{ - \cos 2{\theta _e}}
\end{bmatrix}
\frac{d}{{dt}}
\begin{bmatrix}
    {{i_\alpha }}\\
    {{i_\beta }}
\end{bmatrix}
+ {\omega _e}{\psi _{PM}}
\begin{bmatrix}
    {-\sin{\theta_e}}\\ 
    {\cos{\theta_e}}
\end{bmatrix}

```


# 4. $dq$坐标系下的数学模型
## 4.1. $dq$坐标系下磁链方程
对同步旋转坐标系下的综合矢量形式的磁链方程式作如下代换：

${X_d} + j{X_q} = \vec X_s^{{\omega _e}}$

得到：
```math
{\psi _d} + j{\psi _q} = {L_0}( {{i_d} + j{i_q}}) + {L_1}( {{i_d} - j{i_q}} ) + {\psi _{PM}}
```
写成标量方程形式：

```math
{\psi _d} =  ({L_0} + {L_1}) {i_d} + {\psi _{PM}} = {L_d}{i_d} + {\psi _{PM}}\\
{\psi _q} =  {{L_0} - {L_1}} {i_q} = {L_q}{i_q}
```



## 4.2. $dq$坐标系下电压方程
首先求dq轴磁链的导数：

```math
\begin{aligned}
\frac{d}{{dt}}\vec {\psi} _s^{{\omega _e}} 
&= \frac{d}{{dt}}( {{L_0}\vec i_s^{{\omega _e}} + {L_1}{{[ {\vec i_s^{{\omega _e}}} ]}^*} + {\psi _{PM}}} )\\ 
&= {L_0}\frac{{d\vec i_s^{{\omega _e}}}}{{dt}} + {L_1}\frac{{d{{[ {\vec i_s^{{\omega _e}}} ]}^*}}}{{dt}}\\ 
&= {L_d}\frac{{d{i_d}}}{{dt}} + j{L_q}\frac{{d{i_q}}}{{dt}}
\end{aligned}
```

对同步旋转坐标系下的综合矢量形式的电压方程作和磁链方程相同的代换，得：

```math
{v_d} + j{v_q} = {R_s}( {{i_d} + j{i_q}} ) + {L_d}\frac{{d{i_d}}}{{dt}} + j{L_q}\frac{{d{i_q}}}{{dt}} + j{\omega _e}[ {( {{L_d}{i_d} + {\psi _{PM}}} ) + j{L_q}{i_q}} ]
```
写成标量方程形式：

```math
{v_d} = {R_s}{i_d} + {L_d}\frac{{d{i_d}}}{{dt}} - {\omega _e}{L_q}{i_q}\\ 
{v_q} = {R_s}{i_q} + {L_q}\frac{{d{i_d}}}{{dt}} + {\omega _e}{L_d}{i_d} + {\omega _e}{\psi _{PM}}
```

# 5. 扩展反电动势和有功磁链的概念
在永磁电机无感控制中，常用到扩展反电动势和有功磁链，采用这两个概念，能够提出IPMSM和SPMSM通用的位置观测的框架。此处仅从数学推导的角度简单介绍，不对其物理概念做深入探索。公式的推导可以先在dq坐标系下进行，将电压方程中电流的系数矩阵化为正交，将其余项并为一项，就可以得到扩展反电动势和有功磁链的概念，然后将扩展反电动势或有功磁链视为一个整体，经过坐标变换得到 $\alpha\beta$ 的形式。

* 扩展反电动势
```math
\begin{bmatrix}
    {{v_\alpha }}\\ 
    {{v_\beta }}
\end{bmatrix}=
\begin{bmatrix}
    {{R_s}}                     &{{\omega _e}({L_d} - {L_q})}\\ 
    {-{\omega_e}({L_d}-{L_q})}  &{{R_s}}
\end{bmatrix}
\begin{bmatrix}
    {{i_\alpha }}\\ 
    {{i_\beta }}
\end{bmatrix}+
{L_d}\frac{d}{{dt}}
\begin{bmatrix}
    {{i_\alpha }}\\
    {{i_\beta }}
\end{bmatrix}
+[({L_d} - {L_q})({\omega _e}{i_d} - \frac{d}{{dt}}{i_q}) + {\omega _e}{\psi _{PM}}]
\begin{bmatrix}
    { - \sin {\theta _e}}\\
    {\cos {\theta _e}}
\end{bmatrix}\\
=
\begin{bmatrix}
{{R_s}}&{{\omega _e}({L_d} - {L_q})}\\
{- {\omega _e}({L_d} - {L_q})}&{{R_s}}
\end{bmatrix}
\begin{bmatrix}
    {{i_\alpha }}\\
    {{i_\beta }}
\end{bmatrix}
+ {L_d}\frac{d}{{dt}}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ {E_{ext}}
\begin{bmatrix}
{ - \sin {\theta _e}}\\
{\cos {\theta _e}}
\end{bmatrix}

```
其中 $E_{ext}={( {{L_d} - {L_q}} )( {{\omega _e}{i_d} - \frac{d}{{dt}}{i_q}} ) + {\omega _e}{\psi _{PM}}}$ 为扩展反电动势。

1. 有功磁链

```math
\begin{bmatrix}
{{v_\alpha }}\\
{{v_\beta }}
\end{bmatrix}
= {R_s}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ {L_s}\frac{d}{{dt}}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ \frac{d}{{dt}}
\{[({{L_d} - {L_q}}){i_d} + {\psi _{PM}}]
\begin{bmatrix}
{\cos {\theta _e}}\\
{\sin {\theta _e}}
\end{bmatrix}
\}\\
= {R_s}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ {L_s}\frac{d}{{dt}}
\begin{bmatrix}
    {{i_\alpha }}\\ 
    {{i_\beta }}  
\end{bmatrix}
+ \frac{d}{{dt}}
\begin{bmatrix}
 {{\psi _a}\cos {\theta _e}}\\
 {{\psi _a}\sin {\theta _e}}
\end{bmatrix}
```

其中 $\psi_a={( {{L_d} - {L_q}} ){i_d} + {\psi _{PM}}}$ 为有功磁链



# 6. PMSM的离散域模型
在电流预测控制、高速低载波比控制等场合，常用到PMSM的离散时间模型。对连续模型进行离散化的方法很多，包括前向欧拉法，改进欧拉法，双线性变换法，z变换法等，此处介绍两种得到PMSM离散模型的方法。

## 6.1. 前向Euler法
前向欧拉近似：
```math
\frac{{di}}{{dt}} = \frac{{i(k + 1) - i(k)}}{{{T_s}}}
```
将PMSM电压方程中的电流微分项用上式代替，得到dq轴下的近似离散化数学模型：


```math
{i_d}(k + 1) = ( {1 - \frac{{{T_s}{R_s}}}{{{L_s}}}} ){i_d}(k) + {T_s}{\omega _e}(k){i_q}(k) + {v_d}(k)\frac{{{T_s}}}{{{L_s}}}\\
{i_q}(k + 1) = ( {1 - \frac{{{T_s}{R_s}}}{{{L_s}}}} ){i_q}(k) - {T_s}{\omega _e}(k){i_d}(k) - \frac{{{T_s}}}{{{L_s}}}{\omega _e}(k){\psi _f} + {v_q}(k)\frac{{{T_s}}}{{{L_s}}}
```

## 6.2. 精确离散化模型
所谓精确离散化模型，其实是基于z变换的，是得到物理世界中时间连续的系统的离散模型的最精确的方法，但是该方法仅对线性系统适用，因此以下的推导需要进行一些线性化假设：

1. 转速相对于电流变化缓慢，在一个控制周期，从 $kT_s$ 到 $(k+1)T_s$ 的过程中，转速 ${\omega _e}$ 不变，从而一个控制周期内的反电动势：
```math
{E_{\alpha \beta }}( t ) = {e^{j{\omega _e}( {t - k{T_s}} )}}{E_{\alpha \beta }}( {k{T_s}} )
```
1. 从 $kT_s$ 到 $(k+1)T_s$ 的过程中， ${V_{\alpha \beta }}(t) = {V_{\alpha \beta }}(k{T_s})$ ，也就是$\alpha\beta$静止坐标系下逆变器输出电压的零阶保持效应

要注意以下要点：

1. PMSM数学模型一般在电流环和转速环设计中起作用，为了方便控制器的设计，一般需要dq坐标系下的数学模型；

2. 要得到$dq$轴离散数学模型（包括差分方程形式、脉冲传递函数形式，两者可以互相转化），都需要经过 \alpha\beta 坐标系的差分方程模型通过旋转变换得到。之所以不能在$dq$轴下直接得出是因为dq坐标系同步旋转，而逆变器的电压矢量跟踪有零阶保持效应，在dq坐标系下考虑这一效应会使推导变得复杂。

3. $\alpha\beta$坐标系的离散数学模型的得出必须考虑逆变器电压跟踪的等效零阶保持器，这是出于系统中有零阶保持器时进行z变换的必要性。

1. 对于$\alpha\beta$坐标系下的离散模型，有两种推导思路，分别从脉冲传递函数出发和从线性微分方程的解析解出发。

3. 仅讨论SPMSM



### 6.2.1. $\alpha\beta$ 坐标系离散模型的获得
脉冲传递函数
$\alpha\beta$ 坐标系下的SPMSM模型：
\begin{bmatrix}
\end{bmatrix}
```math
\begin{bmatrix}
{{v_\alpha }}\\
{{v_\beta }}
\end{bmatrix}
= {R_s}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ {L_s}\frac{d}{{dt}}
\begin{bmatrix}
{{i_\alpha }}\\
{{i_\beta }}
\end{bmatrix}
+ {\omega _e}{\psi _{PM}}
\begin{bmatrix}
{ - \sin {\theta _e}}\\
{\cos {\theta _e}}
\end{bmatrix}
```
忽略反电动势项，用复矢量形式表示：
```math
{V_{\alpha \beta }} = ( {{R_s} + s{L_s}} ){I_{\alpha \beta }}
```
将逆变器建模为一个单位增益、理想的零阶保持电压锁存器，得到 $\alpha\beta$ 坐标系下$z$域传递函数：
\begin{bmatrix}
\end{bmatrix}
```math
\frac{{{I_{\alpha \beta }}( z)}}{{V_{\alpha \beta }^*( z )}} 
= \frac{{z - 1}}{z}{\cal Z}[ {\cfrac{{{I_{\alpha \beta }}( s )}}{{s{V_{\alpha \beta }}( s )}}} ]\\ 
= \cfrac{{1 - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s}( {z - {e^{ - {R_s}{T_s}/{L_s}}}} )}}
```
根据z域传递函数，列写系统差分方程：

```math
{I_{\alpha \beta }}( k ) = {e^{ - \frac{{{R_s}}}{{{L_s}}}{T_s}}}{I_{\alpha \beta }}( {k - 1} ) + \frac{{1 - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s}}}{V_{\alpha \beta }}( {k - 1} )
```
1. 微分方程解析解

SPMSM在$\alpha\beta$坐标系下的时域数学模型记为复矢量形式：

```math
{V_{\alpha \beta }}(t) = {R_s}{I_{\alpha \beta }}(t) + {L_s}\frac{d}{{dt}}{I_{\alpha \beta }}(t) + {E_{\alpha \beta }}(t)
```
其中 ${f_{\alpha \beta }} = {f_\alpha } + j{f_\beta }$ ，反电动势项：

```math
{E_{\alpha \beta }} = {\omega _e}{\psi _f}
\begin{bmatrix}
     { - \sin {\theta _e}}\\ 
     {\cos {\theta _e}}
\end{bmatrix}
```
对于一般形式的线性系统状态方程： $\dot x = Ax + Bu$ ，其解的形式为：

```math
x(t) = {e^{A({t - {t_0}})}}x({t_0}) + \int_{{t_0}}^t {{e^{A( {t - \tau } )}}Bu( \tau )d\tau }
```
将SPMSM电压方程式改写为状态方程形式：

```math
\frac{d}{{dt}}{I_{\alpha \beta }}(t) = - \frac{{{R_s}}}{{{L_s}}}{I_{\alpha \beta }}(t) + \frac{1}{{{L_s}}}[ {{V_{\alpha \beta }}(t) - {E_{\alpha \beta }}(t)} ]
```
可以求得电流的解析表达式为：

```math
{I_{\alpha \beta }}( t ) = {e^{ - \frac{{{R_s}}}{{{L_s}}}( {t - {t_0}} )}}{I_{\alpha \beta }}( {{t_0}} ) + \frac{1}{{{L_s}}}\int_{{t_0}}^t {{e^{ - \frac{{{R_s}}}{{{L_s}}}( {t - \tau } )}}[ {{V_{\alpha \beta }}(\tau ) - {E_{\alpha \beta }}(\tau )} ]d\tau }
```
采用前面提到的两点线性化假设，上式积分可以解析求解：

```math
{I_{\alpha \beta }}( t ) = {e^{ - \frac{{{R_s}}}{{{L_s}}}( {t - {t_0}} )}}{I_{\alpha \beta }}( {{t_0}} ) + \frac{1}{{{L_s}}}\int_{{t_0}}^t {{e^{ - \frac{{{R_s}}}{{{L_s}}}( {t - \tau } )}}[ {{V_{\alpha \beta }}(k{T_s}) - {e^{j{\omega _e}( {\tau - kT} )}}{E_{\alpha \beta }}(k{T_s})} ]d\tau }
```
从而得到系统的离散时间差分方程模型：
```math
\begin{array}{l} 
{I_{\alpha \beta }}( {kT} )\\
= {e^{ - \frac{{{R_s}}}{{{L_s}}}T}}{I_{\alpha \beta }}[ {( {k - 1} )T} ] + \frac{1}{{{L_s}}}\int_{( {k - 1} ){T_s}}^{k{T_s}} {{e^{ - \frac{{{R_s}}}{{{L_s}}}( {k{T_s} - \tau } )}}[ {{V_{\alpha \beta }}[ {( {k - 1} ){T_s}} ] - {e^{j{\omega _e}( {\tau - kT} )}}{E_{\alpha \beta }}[ {( {k - 1} ){T_s}} ]} ]d\tau } \\
= {e^{ - \frac{{{R_s}}}{{{L_s}}}T}}{I_{\alpha \beta }}[ {( {k - 1} ){T_s}} ] + \frac{{1 - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s}}}{V_{\alpha \beta }}[ {( {k - 1} ){T_s}} ] - \frac{{{e^{j{\omega _e}T}} - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s} + j{\omega _e}{L_s}}}{E_{\alpha \beta }}[ {( {k - 1} ){T_s}} ]
\end{array}
```
上式除了多了反电动势项之外，电流和电压的关系和基于脉冲传递函数推导得到的模型完全相同，验证了两种思路的统一性。



### 6.2.2. 离散模型的旋转变换
将离散域 \alpha\beta 坐标系模型变换到dq坐标系下：

```math
\begin{array}{l}
{I_{dq}}( {kT} ) = {I_{\alpha \beta }}( {kT} ){e^{ - j{\theta _e}( {kT} )}}\\ 
\\ = {e^{ - {R_s}{T_s}/{L_s}}}{I_{\alpha \beta }}[ {( {k - 1} )T} ]{e^{ - j{\theta _e}( {kT} )}}
\\ + \cfrac{{1 - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s}}}{V_{\alpha \beta }}[ {( {k - 1} )T} ]{e^{ - j{\theta _e}( {kT} )}}
\\ - \cfrac{{{e^{j{\omega _e}T}} - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s} + j{\omega _e}{L_s}}}{E_{\alpha \beta }}[ {( {k - 1} )T} ]{e^{ - j{\theta _e}( {kT} )}}\\ 
\\ = {e^{ - {R_s}{T_s}/{L_s} - j{\omega _e}T}}{I_{dq}}[ {( {k - 1} )T} ]
\\ + \cfrac{{{e^{ - j{\omega _e}T}} - {e^{ - {R_s}{T_s}/{L_s} - j{\omega _e}T}}}}{{{R_s}}}{V_{dq}}[ {( {k - 1} )T} ]
\\ -\cfrac{{1-{e^{-{R_s}{T_s}/{L_s}-j{\omega _e}T}}}}{{{R_s} + j{\omega _e}{L_s}}}{E_{dq}}[{({k - 1})T}] 
\end{array}
```
其中 $E_{dq}$ 表示 ${E_{dq}} = {E_d} + j{E_q} = j{\omega _e}{\psi _{PM}}$

下面改写成脉冲传递函数形式，对方程两边进行z变换，并进行移项：

```math
( {z - {e^{ - {R_s}{T_s}/{L_s} - j{\omega _e}{T_s}}}} ){I_{dq}}( z ) = \cfrac{{{e^{ - j{\omega _e}{T_s}}} - {e^{ - {R_s}{T_s}/{L_s} - j{\omega _e}{T_s}}}}}{{{R_s}}}{V_{dq}}( z ) - \cfrac{{1 - {e^{ - {R_s}{T_s}/{L_s} - j{\omega _e}{T_s}}}}}{{{R_s} + j{\omega _e}{L_s}}}{E_{dq}}( z )
```
得到脉冲传递函数形式的SPMSM离散数学模型：

```math
{I_{dq}}( z ) = \cfrac{{1 - {e^{ - {R_s}{T_s}/{L_s}}}}}{{{R_s}( {z{e^{j{\omega _e}{T_s}}} - {e^{ - {R_s}{T_s}/{L_s}}}} )}}{V_{dq}}( z ) - \cfrac{{{e^{j{\omega _e}{T_s}}} - {e^{ - {R_s}{T_s}/{L_s}}}}}{{( {{R_s} + j{\omega _e}{L_s}} )( {z{e^{j{\omega _e}{T_s}}} - {e^{ - {R_s}{T_s}/{L_s}}}} )}}{E_{dq}}( z )
```
下面改写成矩阵形式， $\alpha\beta$ 坐标系模型：

```math
\begin{bmatrix}
{i_\alpha }( {k + 1} )\\
{i_\beta }( {k + 1} ) 
\end{bmatrix}
= {e^{ - \frac{{{R_s}}}{{{L_s}}}{T_s}}}
\begin{bmatrix} 
{{i_\alpha }( k )}\\ {{i_\beta }( k )} 
\end{bmatrix}
+ \frac{{1 - {e^{ - \frac{{{R_s}}}{{{L_s}}}{T_s}}}}}{{{R_s}}}
\begin{bmatrix} 
{{v_\alpha }( k )}\\ 
{{v_\beta }( k )}  
\end{bmatrix}
+
\begin{bmatrix} 
{{d_1}}&{ - {d_2}}\\
{{d_2}}&{{d_1}}
     \end{bmatrix}
\begin{bmatrix} 
{{e_\alpha }( k )}\\ {{e_\beta }( k )} 
\end{bmatrix}
```
其中

```math
{d_1} = \cfrac{{[ {{e^{ - {R_s}{T_s}/{L_s}}} - \cos ( {{\omega _e}{T_s}} )} ]{R_s} - \sin ( {{\omega _e}{T_s}} ){\omega _e}{L_s}}}{{{R_s}^2 + {\omega _e}^2{L_s}^2}}\\ 
{d_2} = \cfrac{{[ {{e^{ - {R_s}{T_s}/{L_s}}} - \cos ( {{\omega _e}{T_s}} )} ]{\omega _e}L + \sin ( {{\omega _e}{T_s}} ){R_s}}}{{{R_s}^2 + {\omega _e}^2{L_s}^2}}
```
$dq$轴模型：
```math
\begin{aligned} 
\begin{bmatrix} 
{{i_d}( {k + 1} )}\\
{{i_q}( {k + 1} )}
\end{bmatrix}
&= {e^{ - \frac{{{R_s}}}{{{L_s}}}{T_s}}}
\begin{bmatrix} 
 {\cos ( {{\omega _e}{T_s}} )}&{\sin ( {{\omega _e}{T_s}} )}\\ 
 { - \sin ( {{\omega _e}{T_s}} )}&{\cos ( {{\omega _e}{T_s}} )}
\end{bmatrix}
\begin{bmatrix} 
{{i_d}( k )}\\
{{i_q}( k )} 
\end{bmatrix}
&+ \frac{{1 - {e^{ - \frac{{{R_s}}}{{{L_s}}}{T_s}}}}}{{{R_s}}}
\begin{bmatrix} 
{\cos ( {{\omega _e}{T_s}} )}&{\sin ( {{\omega _e}{T_s}} )}\\ { - \sin ( {{\omega _e}{T_s}} )}&{\cos ( {{\omega _e}{T_s}} )}
\end{bmatrix}
\begin{bmatrix} 
{{v_d}( k )}\\ 
{{v_q}( k )}
\end{bmatrix}
&+
\begin{bmatrix} 
{\cos ( {{\omega _e}{T_s}} )}&{\sin ( {{\omega _e}{T_s}} )}\\
{ - \sin ( {{\omega _e}{T_s}} )}&{\cos ( {{\omega _e}{T_s}} )}
\end{bmatrix}
\begin{bmatrix} 
{{d_1}}&{ - {d_2}}\\
{{d_2}}&{{d_1}}
\end{bmatrix}
\begin{bmatrix} 
{{e_d}( k )}\\ 
{{e_q}( k )}
\end{bmatrix}
\end{aligned} 
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
