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

