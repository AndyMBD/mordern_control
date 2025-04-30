# PMSM Motor EKF

* 方差
* 标准差
* 协方差

## 期望

### 离散型随机变量的数学期望

$E(X)=\displaystyle\sum_{i=1}^{N} x_i*p_i$

$p_{i}$是变量$x_{i}$发生的概率。

### 连续型随机变量的数学期望

$E(X)=\displaystyle\int_{-\infty}^{+\infty} xf(x)dx$

$f(x)$是概率密度。

<!--连加-->
$\sum_{i = 1}^{n}x_i$

$\displaystyle\sum_{i = 1}^{n}x_i$

<!--连乘-->
$\prod_{i = 1}^{n}x_i$

$\displaystyle\prod_{i = 1}^{n}x_i$


## 方差 Variance

$\sigma^2=\frac{\displaystyle\sum_{i=1}^{N}(X-\mu)^2}{N}$

* $\sigma$ sample variance
* $X$ sample input
* $\mu$ sample average
* $N$ sample number

## 标准差 Standard Deviation

$\sigma=\sqrt{\frac{\displaystyle\sum_{i=1}^{N}(X-\mu)^2}{N}}$

$C_{v}=\frac{\sigma}{\mu}$ \
$C_v$变异系数

## 协方差 Covariance

* 协方差（Covariance）用于衡量两个变量的总体误差。
* 如果两个变量的变化趋势一致，也就是说如果其中一个大于自身的期望值，另外一个也大于自身的期望值，那么两个变量之间的协方差就是正值。
* 如果两个变量的变化趋势相反，即其中一个大于自身的期望值，另外一个却小于自身的期望值，那么两个变量之间的协方差就是负值。

$Cov(X,Y)=E[(X-E[X])*(Y-E[Y])]$\
$=E[XY]-2E[X]E[Y]+E[X]E[Y]$\
$=E[XY]-E[X]E[Y]$

$Cov=E[(X-\mu_{x})(Y-\mu_{y})]$

如果有X,Y两个变量，每个时刻的“X值与其均值之差”**乘以**“Y值与其均值之差”得到一个乘积，
再对这每时刻的乘积求和并求出均值。

1. 协方差可以反应两个变量的协同关系， 变化趋势是否一致。同向还是方向变化。
2. X变大，同时Y也变大，说明两个变量是同向变化的，这时协方差就是正的。
3. X变大，同时Y变小，说明两个变量是反向变化的，这时协方差就是负的。
4. 从数值来看，协方差的数值越大，两个变量同向程度也就越大。反之亦然。

## 相关系数 Correlation Coefficient

$p=\frac{Cov(X,Y)}{\sigma_{x}\sigma_{y}}$

相关系数是协方差的归一化(normalization)， 消除了两个变量量纲/变化幅度不同的影响。单纯反映两个变量在每单位变化的相似程度。

## 协方差矩阵


