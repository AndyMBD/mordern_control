#### 使用 `<font>` 标签的修改字体

这里是默认字体

<font face="HEI">这里是黑体</font>

<font face="KAI">这里是楷体</font>

<font face="GB18030 Bitmap">这里是扩展字体</font>

<style>
p {font-size: 2rem;}
</style>
#### 标签云实例

<font face="KAI" size=5>大江东去</font>
<font face="KAI" size=3>海之一粟</font>
<font face="KAI">江海寄余生</font>
<font face="song" size=5>天涯何处无芳草</font>  
<font face="KAI" size=5>一蓑烟雨任平生</font>
<font face="HEI" size=7>苏东坡</font>
<font face="HEI" size=4>寂寞沙洲冷</font>  
<font size=6>但愿人长久</font>
<font size=5>十年生死两茫茫</font>
<font size=2>诗酒趁年华</font>


+ 标题1
    + 标题1.1
+ 标题2
+ 标题3

- [ ] **旅行准备**
    - [ ]  准备1
    - [X]  准备2

## Sliding Mode Observer
### These equations describe the discrete-time operation of a PMSM:
$
\begin{array}{l}
\left.i_{\alpha \beta(k+1)}=A i_{\alpha \beta(k)}+B v_{\alpha \beta(k)}-B e_{\alpha \beta(k)}\right. \\
e_{\alpha \beta(k+1)}=e_{\alpha \beta(k)}+T_{s}\left(\omega_{e(k)} J e_{\alpha \beta(k)}\right. \\
J=\left[\begin{array}{cc}
0 & -1 \\
1 & 0
\end{array}\right] \\
\Phi=\left[\begin{array}{cc}
-\frac{R}{L} & 0 \\
0 & -\frac{R}{L}
\end{array}\right] \\
A=e^{\Phi T_{s}} \\
B=\int_{0}^{e^{\Phi} \tau} d \tau=\left[\begin{array}{ll}
b & 0 \\
0 & b
\end{array}\right] \\
b=\frac{1-e^{-R T_{s} / L}}{R}
\end{array}
$
### These equations describe the discrete-time sliding mode observer operation of a surface mount PMSM:
$
\begin{array}{l}
\hat{i}_{\alpha \beta(k+1)}=A \hat{i}_{\alpha \beta(k)}+B v_{\alpha \beta(k)}-B \hat{e}_{\alpha \beta(k)}-\eta \operatorname{Sign}\left(\tilde{i}_{\alpha \beta(k)}\right) \\
\hat{e}_{\alpha \beta(k+1)}=\hat{e}_{\alpha \beta(k)}+B^{-1} g\left(\tilde{i}_{\alpha \beta(k)}-A \tilde{i}_{\alpha \beta(k-1)}+\eta \operatorname{Sign}\left(\tilde{i}_{\alpha \beta(k-1)}\right)\right) \\
\tilde{i}_{\alpha \beta(k)}=\hat{i}_{\alpha \beta(k)}-i_{\alpha \beta(k)} \\
\tilde{e}_{\alpha \beta(k)}=\hat{e}_{\alpha \beta(k)}-e_{\alpha \beta(k)} 
\end{array}
$

where:

\sethlcolor{pink}\hl{eα and iα are the stator back EMF and current for the α axis}
eβ and iβ are the stator back EMF and current for the β axis
ẽα and ĩα are the errors in the stator back EMF and current for the α axis
ẽβ and ĩβ are the errors in the stator back EMF and current for the β axis
vα and vβ are the stator supply voltages
R is the stator resistance
L is the stator inductance
g is the back EMF observer gain
η is the current observer gain
ωe is the electrical angular velocity
Ts is the sampling period
k is the sample count


$
\overbrace{a+b+c}^{\text{note}}
$\
$
\textcolor{yellow}{F=ma}
$\
$
\begin
\colorbox{aqua}{$F=ma$}
\end
$


$$\begin{cases}
a_1x+b_1y+c_1z=d_1 \\[2ex] 
a_2x+b_2y+c_2z=d_2 \\[2ex] 
a_3x+b_3y+c_3z=d_3
\end{cases}
$$

st=>start: Start:>https://www.zybuluo.com
io=>inputoutput: verification
op=>operation: Your Operation
cond=>condition: Yes or No?
sub=>subroutine: Your Subroutine
e=>end

st->io->op->cond
cond(yes)->e
cond(no)->sub->io

$\color{black}{blackText}$，$\color{gray}{grayText}$
$\color{silver}{silverText}$，$\color{white}{whiteText}$

$\color{maroon}{maroonText}$，$\color{red}{redText}$
$\color{yellow}{yellowText}$，$\color{green}{greenText}$
$\color{teal}{tealText}$，$\color{aqua}{aquaText}$
$\color{blue}{blueText}$，$\color{navy}{navyText}$
$\color{purple}{purpleText}$，$\color{fuchsia}{fuchsiaText}$

$
\overbrace{a+b+c}^{\text{note}}
$\
$
\textcolor{yellow}{F=ma}
$\
* 第一项
* 第二项
* 第三项

+ 第一项
+ 第二项
+ 第三项


- 第一项
- 第二项
- 第三项

1. 第一项
2. 第二项
3. 第三项

1. 第一项：
    - 第一项嵌套的第一个元素
    - 第一项嵌套的第二个元素
2. 第二项：
    - 第二项嵌套的第一个元素
    - 第二项嵌套的第二个元素

*斜体文本*
_斜体文本_
**粗体文本**
__粗体文本__
***粗斜体文本***
___粗斜体文本___ \
<font color=Blue>Test</font>\
$\colorbox{Green}{y = ax + bx + c}$\
$\colorbox{Orange}{y} = \colorbox{Red}{kx} + \colorbox{Blue}{b}$\
${\colorbox{Emerald}z^2} = {\colorbox{Yellow}x^2} + {\colorbox{Cyan}y^2}$

Suppose we solve equations 
$$
\mathcal L U = F \tag{1} 
$$
...
...
In the equation $\eqref{eq1}$, ...


$$P\{a<X\le b\}=F(b)-F(a) \tag{1}$$

$$P\{a<X\le b\}=F(b)-F(a) \tag{1} \hspace{50cm}$$

$$\begin{aligned}
&A.\ 1&B.\ 2\\
&C.\ 3&D.\ 4
\end{aligned}$$


$$
\begin{aligned}
P(B|A)&=\frac{P(AB)}{P(A)}\\
P(\overline{B}|A)&=1-P(B|A)=1-\frac{P(AB)}{P(A)}
\end{aligned}
$$


$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u}\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} \\
\end{vmatrix} \tag{1.1} \label{example1}
$$

$$
abla^{2} f=\frac{\partial^{2} f}{\partial x_{1}^{2}}+\frac{\partial^{2} f}{\partial x_{2}^{2}}+\ldots+\frac{\partial^{2} f}{\partial x_{n}^{2}} \tag{1.2} \label{example2}
$$


 ``<a id="equ1"></a>
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u}\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} \\
\end{vmatrix} \tag{2.1}
$$

<a id="equ2"></a>
$$
abla^{2} f=\frac{\partial^{2} f}{\partial x_{1}^{2}}+\frac{\partial^{2} f}{\partial x_{2}^{2}}+\ldots+\frac{\partial^{1.2} f}{\partial x_{n}^{2}} \tag{2.2}
$$``

here is a referance $\href{#equ1}{2.1}$
[点击跳转](#equ1)

> #### The quarterly results look great!
>
> - Revenue was off the chart.
> - Profits were higher than ever.
>
>  *Everything* is going according to **plan**.

$\begin{aligned}
令A_1&=\lbrace 取到的零件来自甲机床\rbrace\\
A_2&=\lbrace取到的零件来自乙机床\rbrace\\
B&=\lbrace取到的零件是废品\rbrace
\end{aligned}$


$$
\begin{aligned}
&max=2*x1+3*x2;\\
&x1+2*x2<=8;\\
&4*x1<=16;\\
&s4*x2<=12; 
\end{aligned}
$$


| 表头 | 表头 | 表头 |  
| :--- | ---: | --- |
| 我是左对齐 | 我是右对齐 | Markdown插入表格 |
| “:”号在左 | “:”号在右 | Markdown插入表格 |


| 序号 | 字母 | 代码 | 希腊读音 | 英文读音 | 中文读音 | 常用指代意义 |
| :--- | ---: | --- | --- | --- | --- | --- |
| 序号 | 字母 | 代码 | 希腊读音 | 英文读音 | 中文读音 | 常用指代意义 |

| 序号 | 大写 | 小写 | 国际音标[推荐] | 英文 | 中文 | 常用指代意义  |
| :--- | --- | --- | --- | ---- | --- | --- |
| 1 | Α | α | /'ælfə/ | alpha | 阿尔法 | 角度，系数，角加速度  |
| 2 | Β | β | /'bi:tə/ /'beɪtə/ | beta | 贝塔 | 磁通系数，角度，系数  |
| 3 | Γ | γ | /'gæmə/ | gamma | 伽玛 | 电导系数，角度，比热容比  |
| 4 | Δ | δ | /'deltə/ | delta | 德尔塔 | 变化量，化学反应中的加热，屈光度，一元二次方程中的判别式  |
| 5 | Ε | ε | /'epsɪlɒn/ | epsilon | 艾普西隆 | 对数之基数，介电常数  |
| 6 | Ζ | ζ | /'zi:tə/ | zeta | 泽塔 | 系数，方位角，阻抗，相对黏度  |
| 7 | Η | η | /'i:tə/ | eta | 伊塔 | 迟滞系数，效率  |
| 8 | Θ | θ | /'θi:tə/ | theta | 希塔 | 温度，角度  |
| 9  | Ι | ι | /aɪ'əʊtə/                    | iota   | 约塔  | 微小，一点                         |
| 10 | Κ | κ | /'kæpə/                      | kappa  | 卡帕  | 介质常数，绝热指数                     |
| 11 | ∧ | λ | /'læmdə/                     | lambda | 拉姆达 | 波长，体积，导热系数; 强度                |
| 12 | Μ | μ | /mju:/                       | mu     | 缪   | 磁导系数，微，动摩擦系（因）数，流体动力黏度; 数学期望  |
| 13 | Ν | ν | /nju:/                       | nu     | 纽   | 磁阻系数，流体运动粘度,光子频率，化学计量数        |
| 14 | Ξ | ξ | 希腊: /ksi/ <br> 英美: /ˈzaɪ/或/ˈksaɪ/ | xi     | 克西  | 随机变量，（小）区间内的一个未知特定值           |
| 15 | Ο | ο | /əuˈmaikrən/ <br>/ˈɑmɪˌkrɑn/ | omicron | 奥密克戎 | 高阶无穷小函数              |
| 16 | ∏ | π | /paɪ/                    | pi      | 派    | 圆周率，π(n)表示不大于n的质数个数  |
| 17 | Ρ | ρ | /rəʊ/                    | rho     | 柔    | 电阻系数，柱坐标和极坐标中的极径，密度  |
| 18 | ∑ | σ | /'sɪɡmə/                 | sigma   | 西格玛  | 总和，表面密度，跨导，正应力; 标准差  |
| 19 | Τ | τ | /tɔ:/                    | tau     | 陶    | 时间常数，切应力，2π（两倍圆周率）   |
| 15 | Ο | ο | /əuˈmaikrən/<br> /ˈɑmɪˌkrɑn/ | omicron | 奥密克戎 | 高阶无穷小函数              |
| 16 | ∏ | π | /paɪ/                    | pi      | 派    | 圆周率，π(n)表示不大于n的质数个数  |
| 17 | Ρ | ρ | /rəʊ/                    | rho     | 柔    | 电阻系数，柱坐标和极坐标中的极径，密度  |
| 18 | ∑ | σ | /'sɪɡmə/                 | sigma   | 西格玛  | 总和，表面密度，跨导，正应力; 标准差  |
| 19 | Τ | τ | /tɔ:/                    | tau     | 陶    | 时间常数，切应力，2π（两倍圆周率）   |
| 20 | Υ | υ | /ˈipsilon/ <br>/ˈʌpsɨlɒn/ | upsilon | 宇普西龙 | 位移                        | 
| 21 | Φ | φ | /faɪ/                 | phi     | 斐    | 磁通，角，透镜焦度，热流量             |
| 22 | Χ | χ | /kaɪ/                 | chi     | 希    | 统计学中有卡方(χ^2)分布            |
| 23 | Ψ | ψ | /psaɪ/                | psi     | 普西   | 角速，介质电通量，ψ函数              |
| 24 | Ω | ω | /'əʊmɪɡə/<br> /oʊ'meɡə/   | omega   | 欧米伽  | 欧姆，角速度，交流电的电角度，化学中的质量分数;  |



```python

```


```python

```




$\displaystyle amplitude \left(- \left(-1\right)^{\frac{2}{3}} \sin{\left(\pi \left(2 freq t + \frac{1}{6}\right) \right)} + \sqrt[3]{-1} \cos{\left(\pi \left(2 freq t + \frac{1}{3}\right) \right)} + \cos{\left(2 \pi freq t \right)}\right)$




```python
import sympy
from sympy import *
exp(I*pi)
# eqn1=sympy.exp(sympy.I * 2*sympy.pi) + 1
# print(eqn1)
```




$\displaystyle -1$




```python
import math
import numpy as np
import matplotlib.pyplot as plt

class ode(object):
    """包括: 1. 显示Euler; 2. 隐式Euler; 3. 梯形方法; 4. 改进Euler方法; 5. Runge-Kutta方法(四阶)"""

    def __init__(self):
        # 初始值
        self.y0 = 1
        # 区间[a,b]
        self.a = 0
        self.b = 1
        # 步长
        self.h = 0.1

    # 定义常微分方程
    def ODE(self, x, y):
        f = -y + x + 1
        return f

    # 计算准确值
    def acc(self, x):
        # 方程真解为 y = exp(-x)+x
        acc = math.exp(-x)+x
        return acc

    # 1. 显示Euler法
    def Euler_forward(self):
        yn = self.y0
        xn = self.a
        accuracy = []
        Euler_forward = []
        x = []
        while xn <= 1:
            Euler_forward.append(yn)
            accuracy.append(self.acc(xn))  
            x.append(xn)
            f = self.ODE(xn, yn)
            # 显示Euler方法: y(n+1) = yn + hf(x(n+1),y(n+1)) , x(n+1) = x0 + (n+1)*h = x(n) + h
            yn = yn + self.h * f
            xn = xn + self.h
        return x, Euler_forward, accuracy

    # 2. 隐式Euler
    def Euler_back(self):
        yn = self.y0
        xn = self.a
        Euler_back = []
        x = []
        while xn < 1:
            xn1 = xn + self.h
            # 隐式Euler方法: y(n+1) = yn + hf(x(n+1),y(n+1)) , x(i) = x0 + i*h = xn + h
            # 由公式计算可得: y(n+1) = (h*x(n+1)+yn+h)/(1+h)
            yn = (self.h*xn1 + yn + self.h) / (1 + self.h)
            Euler_back.append(yn)
            x.append(xn1)
            xn = xn1
        return x, Euler_back

    # 3. 梯形方法
    def trapezoid(self):
        yn = self.y0
        xn = self.a
        trapezoid = []
        x = []
        while xn < 1:
            xn1 = xn + self.h
            f = self.ODE(xn, yn)
            ynn = yn + self.h * f
            ynnn = (self.h*xn1 + yn + self.h) / (1 + self.h)
            #  梯形公式: 向前Euler法和向后Euler方法做算术平均
            yn = (ynn + ynnn) / 2
            trapezoid.append(yn)
            x.append(xn1)
            xn = xn1
        return x, trapezoid

    # 4. 改进Euler方法
    def impr_Euler(self):
        yn = self.y0
        xn = self.a
        impr = []
        x = []
        while xn < 1:
            xn1 = xn + self.h
            f = self.ODE(xn, yn)
            ynn = yn + self.h * f  
            f1 = self.ODE(xn1, ynn)
            #  改进的Euler公式: 用显示公式作预估，用梯形公式作校正
            yn = yn + self.h*(f + f1) / 2
            impr.append(yn)
            x.append(xn1)
            xn = xn1
        return x, impr

    # 5. Runge-Kutta方法(四阶)
    def R_K(self):
        yn = self.y0
        xn = self.a
        R_K = []
        x = []
        while xn < 1:
            R_K.append(yn)
            x.append(xn)
            k1 = self.ODE(xn, yn)
            k2 = self.ODE(xn, yn) + self.h/2 - self.h*k1/2
            k3 = self.ODE(xn, yn) + self.h/2 - self.h*k2/2
            k4 = self.ODE(xn, yn) + self.h - self.h*k3
            #  四阶R_K公式: y(n+1) = yn + h*(k1+2*k2+2*k3+k4)/6
            yn = yn + self.h * (k1 + 2*k2 + 2*k3 + k4) / 6
            xn = xn + self.h
        return x, R_K


    def shows(self):
        # 绘制图像
        x1, Euler_forward, accuracy = self.Euler_forward()
        x2, Euler_back = self.Euler_back()
        x3, trapezoid = self.trapezoid()
        x4, impr_Euler = self.impr_Euler()
        x5, R_K = self.R_K()
        plt.rcParams['font.sans-serif'] = ['SimHei']  # 用来正常显示中文标题
        plt.plot(x1, Euler_forward, 'o', c='r', label='向前Euler法')
        plt.plot(x2, Euler_back, 'v', c='b', label='向后Euler法')
        plt.plot(x3, trapezoid, 's', c='g', label='梯形方法')
        plt.plot(x4, impr_Euler, 'p', c='y', label='改进的Euler方法')
        plt.plot(x5, R_K, '*', c='m', label='四阶R_K方法')
        plt.plot(x1, accuracy, c='k', label='精确解')
        plt.title('dy/dx=x-y-1  y(0)=1  [0,1]', fontsize=19)
        plt.xlim(-0.01, 1.01)
        plt.ylim(0.98, 1.4)
        plt.xlabel('x轴', fontsize=19)
        plt.ylabel('y轴', fontsize=19)
        plt.legend()  
        plt.grid()    
        plt.show()


```


```python
from class6 import ode

ode = ode()  

ode.shows()

```

    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 36724 (\N{CJK UNIFIED IDEOGRAPH-8F74}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 21521 (\N{CJK UNIFIED IDEOGRAPH-5411}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 21069 (\N{CJK UNIFIED IDEOGRAPH-524D}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 27861 (\N{CJK UNIFIED IDEOGRAPH-6CD5}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 21518 (\N{CJK UNIFIED IDEOGRAPH-540E}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 26799 (\N{CJK UNIFIED IDEOGRAPH-68AF}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 24418 (\N{CJK UNIFIED IDEOGRAPH-5F62}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 26041 (\N{CJK UNIFIED IDEOGRAPH-65B9}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 25913 (\N{CJK UNIFIED IDEOGRAPH-6539}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 36827 (\N{CJK UNIFIED IDEOGRAPH-8FDB}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 30340 (\N{CJK UNIFIED IDEOGRAPH-7684}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 22235 (\N{CJK UNIFIED IDEOGRAPH-56DB}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 38454 (\N{CJK UNIFIED IDEOGRAPH-9636}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 31934 (\N{CJK UNIFIED IDEOGRAPH-7CBE}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 30830 (\N{CJK UNIFIED IDEOGRAPH-786E}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:152: UserWarning: Glyph 35299 (\N{CJK UNIFIED IDEOGRAPH-89E3}) missing from current font.
      fig.canvas.print_figure(bytes_io, **kw)
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    findfont: Generic family 'sans-serif' not found because none of the following families were found: SimHei
    


    
![png](output_26_1.png)
    

