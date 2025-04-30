# PMSM Clark Park I_Clark I_Park Transfmation



## Clark

$I_A+I_B+I_C=0$\
$I_\alpha=I_A-I_B*sin(\pi/6)-I_C*sin(\pi/6)=I_A-\frac{1}{2}I_B-\frac{1}{2}I_C$\
$I_\beta=I_B*cos(\pi/6)-I_C*cos(\pi/6)=\frac{\sqrt{3}}{2}I_B-\frac{\sqrt{3}}{2}I_C$

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}   &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$I_\alpha=I_A-\frac{1}{2}I_B-\frac{1}{2}I_C=I_A+\frac{1}{2}I_A=\frac{3}{2}I_A$\
$I_\beta=\frac{\sqrt{3}}{2}I_B-\frac{\sqrt{3}}{2}I_C=\frac{\sqrt{3}}{2}(I_B-I_C)=\frac{\sqrt{3}}{2}(I_A+2*I_B)$

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =
    \begin{bmatrix}
        \frac{3}{2}    & 0         & 0\\
        \frac{\sqrt{3}}{2}    & 2*\frac{\sqrt{3}}{2}  & 0\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

### Equal Amplitude transfer

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =K*
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}   &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =\frac{2}{3}*
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}  &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
    =\begin{bmatrix}
        \frac{2}{3}    & -\frac{1}{3}         & -\frac{1}{3}\\
        0    & \frac{1}{\sqrt{3}}  &  -\frac{1}{\sqrt{3}}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$I_\alpha=\frac{2}{3}*\frac{3}{2}I_A=I_A$\
$I_\beta=\frac{2}{3}*\frac{\sqrt{3}}{2}(I_A+2*I_B)=\frac{1}{\sqrt{3}}(I_A+2*I_B)$

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =\frac{2}{3}
    \begin{bmatrix}
        \frac{3}{2}    & 0         & 0\\
        \frac{\sqrt{3}}{2}    & 2*\frac{\sqrt{3}}{2}  & 0\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
    =\begin{bmatrix}
        1    & 0         & 0\\
        \frac{1}{\sqrt{3}}    & \frac{2}{\sqrt{3}}  & 0\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

### Equal Power transfer

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =K*
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}  &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =\sqrt{\frac{2}{3}}*
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}  &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =\sqrt\frac{2}{3}*
    \begin{bmatrix}
        1    & -\frac{1}{2}         & -\frac{1}{2}\\
        0    & \frac{\sqrt{3}}{2}  &  -\frac{\sqrt{3}}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
    =\begin{bmatrix}
        \sqrt\frac{2}{3}    & -\sqrt\frac{1}{6}        & -\sqrt\frac{1}{6}\\
        0                   & \sqrt\frac{1}{2}         &  -\sqrt\frac{1}{2}\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

$
    \begin{bmatrix}
        I_{\alpha}\\
        I_{\beta} \\
    \end{bmatrix}
    =\sqrt{\frac{2}{3}}
    \begin{bmatrix}
        \frac{3}{2}    & 0         & 0\\
        \frac{\sqrt{3}}{2}    & 2*\frac{\sqrt{3}}{2}  & 0\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
    =\begin{bmatrix}
        \sqrt{\frac{3}{2}}    & 0         & 0\\
        \sqrt{\frac{1}{2}}    & 1         & 0\\
    \end{bmatrix}*
    \begin{bmatrix}
        I_{A} \\
        I_{B} \\
        I_{C} \\
    \end{bmatrix}
$ 

## Park
