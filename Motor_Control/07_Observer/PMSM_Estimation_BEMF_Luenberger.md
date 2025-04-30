# ***Luenberger Observer***

## Luenbeger Based Methods

$\dot{x}=A*x+B*u$\
$y=C*x+D*u$

$\dot{\hat{x}}=A*\hat{x}+B*u$\
$\hat{y}=C*\hat{x}+D*u$

$\dot{x}-\dot{\hat{x}}=A*(x-\hat{x})$\
$y-\hat{y}=C*(x-\hat{x})$\
$\dot{e}=A*e$\
$y-\hat{y}=C*e$\
***Import a pole*** \
$\begin{aligned}
\dot{e}
        &=A*e+L(y-\hat{y})\\
        &=A*e+L*C*e\\
        &=(A+L*C*)e\\
\end{aligned}\hspace*{50cm}$

$\dot{\hat{x}}=A*\hat{x}+B*u+L(y-\hat{y})$\
$\hat{y}=C*\hat{x}+D*u$
