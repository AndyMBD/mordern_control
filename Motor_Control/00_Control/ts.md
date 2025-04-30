```python
###########SVPWM UA UB UC#######################
################################################
# import itertools
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import math
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
def position(time=0):
    x = np.cos(time)
    y = np.sin(time)
    return {'x' : x, 'y' : y}
# Pre Define
U_dc=1.5 #Voltage
U_m=2/3*U_dc#1#
sector=[1,5,0,3,2,4]
# fig, (ax_u_l,axm,axr) = plt.subplots(
#     ncols=3,
#     # nrows=2,
#     sharey=True,
#     # figsize=(6, 2),
#     figsize=(10, 5),
#     gridspec_kw=dict(width_ratios=[1,1,2], wspace=0),
# )

####################################
##--------------------------------##
###0------1------2----------------4#
##0|ax_u_l|ax_u_l|    ax_u_r      |#
###--------------------------------#
##1|    ax_d_l   |    ax_d_r      |#
###0------1------2----------------4#
##--------------------------------##
####################################
# fig,(ax_u_l,ax_u_r) = plt.figure(nrows=1,ncols=2,figsize=(6, 6),constrained_layout=True)
# fig, (ax_u_l,ax_u_r) = plt.subplots(nrows=1, ncols=2, constrained_layout=False)
fig, (ax_u_l, ax_u_r) = plt.subplots(nrows=1, ncols=2)
fig.set_size_inches(12,6)
ax_u_l.axis('equal')
ax_u_r.axis('equal')
fig.suptitle("SVPWM")
# ,constrained_layout=True
# gs = GridSpec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=0 ,hspace=0.2)
# gs = GridSpec(nrows=2,#2
#             ncols=4, #4
#             width_ratios=[2,2,2,2], 
#             height_ratios=[2, 2], 
#             wspace=0 ,
#             hspace=0.12,
#             left=0.05, 
#             right=0.95, 
#             top=0.95, 
#             bottom=0.05)#,top=2,left=1,right=2,bottom=1
# gs = fig.add_gridspec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=None ,hspace=0.05)
# ax_u_l = fig.add_subplot()#gs[0,0:1]
# ax_u_l.set_aspect(1)

ax_u_l.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
# ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
#                       ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
# ax_u_l.xaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.xaxis.set_ticks(np.linspace(-U_dc,U_dc,11))
plt.xticks(rotation=15)
# ax_u_l.yaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.yaxis.set_ticks(np.linspace(-U_dc,U_dc,11))
# ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
#                     ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])
ax_u_l.set_xlim(-U_dc,U_dc)
ax_u_l.set_ylim(-U_dc,U_dc)
# ax_u_l.spines[:].set_visible(False)
plt.grid()

ax_u_r.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
# ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
#                       ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
# ax_u_l.xaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_r.xaxis.set_ticks(np.linspace(-U_dc,U_dc,11))
# plt.xticks(rotation=15)
# ax_u_l.yaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_r.yaxis.set_ticks(np.linspace(-U_dc,U_dc,11))
# ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
#                     ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])
ax_u_r.set_xlim(-U_dc,U_dc)
ax_u_r.set_ylim(-U_dc,U_dc)
# ax_u_l.spines[:].set_visible(False)
plt.grid(True)


## Set axes x y ratio Axes
# ax_u_l.set_aspect(1)
# ax_u_m.set_box_aspect(1)
# ax_u_r.set_box_aspect(1 / 2)
## Plot left Axes
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_m*np.cos(theta)
theta_y=U_m*np.sin(theta)
# theta_rad_2=math.radians(theta_2)
# ax_u_r.plot(center[:,0], center[:,1])#, color='r'
###Draw a Hexagon ############
ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'

# draw circle with initial point in left Axes#########
theta_1 = np.linspace(0, 2 * np.pi, 100)
ax_u_l.plot(U_m*np.cos(theta_1), U_m*np.sin(theta_1))#, lw=0.3, "k"
Center_l, = ax_u_l.plot(0, 0, "o")
#####ax_u_r######################################################

###Draw a Hexagon ############
ax_u_r.plot(theta_x, theta_y)#, color='r'
ax_u_r.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_r.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_r.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_r.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_r.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_r.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
# draw circle with initial point in right Axes#########
ax_u_r.plot(U_m*np.cos(theta_1), U_m*np.sin(theta_1))#, lw=0.3, "k"
Center_r, =ax_u_r.plot(0, 0, "o")

# plt.quiver(0, 0, 0.5, 1, angles='xy', scale=1.03, scale_units='xy', width=0.005)
line_l              = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_C          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_A_2_U_B    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
line_l_U_B_2_U_C    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01, color = 'r'))#, color = 'r'

ax_u_l.grid('both')

## Plot Right Axes

# draw full curve to set view limits in right Axes
U_A=U_m*np.cos(theta_1)
U_B=U_m*np.cos(theta_1-2/3*np.pi)
U_C=U_m*np.cos(theta_1+2/3*np.pi)
U_SVPWM=np.cos(theta_1)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[])

    # theObject.set_data([], [])
    # time_text.set_text('')
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    x_deg = frames
    x=math.radians(x_deg)
    pos = np.cos(x), np.sin(x)
    Us_start_x  =   0
    Us_start_y  =   0
    Us_end_x    =   U_m*np.cos(x)
    Us_end_y    =   U_m*np.sin(x)
    U_alpha     =   U_m*np.cos(x)
    U_beta      =   U_m*np.sin(x)
    U_alpha_start_x =   0
    U_alpha_start_y =   0
    U_alpha_end_x   =   U_alpha
    U_alpha_end_y   =   0
    U_beta_start_x  =   0
    U_beta_start_y  =   0
    U_beta_end_x    =   0
    U_beta_end_y    =   U_beta
    line_l_U_alpha_2_Us_start_x =   U_alpha_end_x
    line_l_U_alpha_2_Us_start_y =   U_alpha_end_y
    line_l_U_alpha_2_Us_end_dx  =   0
    line_l_U_alpha_2_Us_end_dy  =   U_beta_end_y
    line_l_U_beta_2_Us_start_x  =   U_beta_end_x
    line_l_U_beta_2_Us_start_y  =   U_beta_end_y
    line_l_U_beta_2_Us_end_dx   =   U_alpha_end_x
    line_l_U_beta_2_Us_end_dy   =   0
    # T_1=
    # T_2=



    line_l_start_x  =   0
    line_l_start_y  =   0
    line_l_end_x    =   U_m*np.cos(x)
    line_l_end_y    =   U_m*np.sin(x)

    line_l_U_A_start_x  =   0
    line_l_U_A_start_y  =   0
    line_l_U_A_end_x    =   U_m*2/3*np.cos(x)
    line_l_U_A_end_y    =   0
    
    line_l_U_B_start_x  =   0
    line_l_U_B_start_y  =   0
    line_l_U_B_end_x    =   np.cos(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)#np.abs(np.cos(2/3*np.pi))
    line_l_U_B_end_y    =   np.sin(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)

    line_l_U_C_start_x  =   0
    line_l_U_C_start_y  =   0
    line_l_U_C_end_x    =   np.cos(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    line_l_U_C_end_y    =   np.sin(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    
    line_l_U_A_2_U_B_start_x    = line_l_U_A_end_x
    line_l_U_A_2_U_B_start_y    = line_l_U_A_end_y
    line_l_U_A_2_U_B_end_dx     = line_l_U_B_end_x #+ 0.2 #line_l_U_B_end_x#-line_l_U_B_start_x
    line_l_U_A_2_U_B_end_dy     = line_l_U_B_end_y #+ 0.2 #line_l_U_B_end_y#-line_l_U_B_start_y
    line_l_U_B_2_U_C_start_x    = line_l_U_A_2_U_B_start_x+line_l_U_A_2_U_B_end_dx
    line_l_U_B_2_U_C_start_y    = line_l_U_A_2_U_B_start_y+line_l_U_A_2_U_B_end_dy
    line_l_U_B_2_U_C_end_dx     = line_l_U_C_end_x #+ line_l_U_C_end_x#-line_l_U_C_start_x
    line_l_U_B_2_U_C_end_dy     = line_l_U_C_end_y #+ line_l_U_C_end_y#-line_l_U_C_start_y


    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_A      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_C      = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    line_l_U_A_2_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_A_2_U_B_start_x,line_l_U_A_2_U_B_start_y,line_l_U_A_2_U_B_end_dx,line_l_U_A_2_U_B_end_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B_2_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_B_2_U_C_start_x,line_l_U_B_2_U_C_start_y,line_l_U_B_2_U_C_end_dx,line_l_U_B_2_U_C_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    # print("Sector = ",int(x/(1/3*np.pi)))
    line_Us          = ax_u_r.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_alpha   = ax_u_r.add_patch(plt.Arrow(U_alpha_start_x,U_alpha_start_y,U_alpha_end_x,U_alpha_end_y, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    line_l_U_beta    = ax_u_r.add_patch(plt.Arrow(U_beta_start_x,U_beta_start_y,U_beta_end_x,U_beta_end_y, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    line_l_U_alpha_2_Us   = ax_u_r.add_patch(plt.Arrow(line_l_U_alpha_2_Us_start_x,line_l_U_alpha_2_Us_start_y,line_l_U_alpha_2_Us_end_dx,line_l_U_alpha_2_Us_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    line_l_U_beta_2_Us    = ax_u_r.add_patch(plt.Arrow(line_l_U_beta_2_Us_start_x,line_l_U_beta_2_Us_start_y,line_l_U_beta_2_Us_end_dx,line_l_U_beta_2_Us_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear

    # print("x = ",x)
    return line_l,line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,line_l_U_alpha,line_l_U_beta,line_Us,line_l_U_alpha_2_Us,line_l_U_beta_2_Us#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            # frames=np.linspace(0, 2*np.pi, 128),
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)#,init_func=init
# plt.ion()
plt.show()

```


```python
frames=np.linspace(0, 2*np.pi, 128)
frames_1=np.arange(0, 360, 1)

```


```python
import numpy as np
import math
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# %matplotlib widget
fig, ax = plt.subplots()
ax.set_xlim(0,2*np.pi)
ax.set_ylim(-1.5,1.5)

x = np.arange(0, 2*np.pi, 0.01)
# U_A, = ax.plot(x, np.cos(x))
# U_B, = ax.plot(x, np.cos(x-2/3*np.pi))
# U_C, = ax.plot(x, np.cos(x+2/3*np.pi))
# U_A, = ax.plot(x,np.cos(x))
# U_B, = ax.plot(x,np.cos(x-2/3*np.pi))
# U_C, = ax.plot(x,np.cos(x+2/3*np.pi))
# line1, =ax.add_patch(plt.axvline(x,color='r', linestyle='--', label='xxx'))#, color = 'r', color = 'r'# works good except the arror cannot disapear
# line1, =ax.axvline(0, color='r', linestyle='--', label='xxx')
vl = ax.axvline(0, ls='-', color='r', lw=1, zorder=10)
line, = ax.plot([], [], lw=2)
U_A,  = ax.plot([],[], lw=2)
U_B,  = ax.plot([],[], lw=2)
U_C,  = ax.plot([],[], lw=2)
def animate(frames):
    i=frames
    i_rad=math.radians(i)
    line.set_data(x,np.cos( x-i_rad ))  #+1/2*np.pi/ 150 update the data.
    # U_A.set_data(x,2/3*np.cos( i_rad-2/3*np.pi))  #+1/2*np.pi/ 150 update the data.
    U_A.set_data(x,2/3*np.cos( i_rad)*np.cos(x))  #+1/2*np.pi/ 150 update the data.
    U_B.set_data(x,2/3*np.cos( i_rad-2/3*np.pi)*np.cos(x))  #+1/2*np.pi/ 150 update the data.
    U_C.set_data(x,2/3*np.cos( i_rad+2/3*np.pi)*np.cos(x))  #+1/2*np.pi/ 150 update the data.

    # U_A.set_ydata(np.cos(x + i ))  #/ 150 update the data.
    # U_B.set_ydata(np.cos(x -2/3*np.pi+ i ))  #/ 150 update the data.
    # U_C.set_ydata(np.cos(x +2/3*np.pi+ i ))  #/ 150 update the data.
    # U_A.set_xdata(i_rad)  #/ 150 update the data.
    # U_B.set_xdata(i_rad)  #/ 150 update the data.
    # U_C.set_xdata(i_rad)  #/ 150 update the data.
    # U_A.set_data(i_rad,np.cos( i_rad ))  #/ 150 update the data.
    # U_B.set_data(i_rad,np.cos( -2/3*np.pi+ i_rad ))  #/ 150 update the data.
    # U_C.set_data(i_rad,np.cos( +2/3*np.pi+ i_rad ))  #/ 150 update the data.
    # ax.hlines(y=x + i / 50, xmin=0.0, xmax=1.0, color='b')
    # ax.vlines(x,  ymin=0.0, ymax=1.0,color='b')#
    # ax.vlines(x)#,  ymin=0.0, ymax=1.0,color='b'
    # xxxx.setdata(i)  # update the data.
    # line1 = ax.add_patch(plt.axvline(i_rad,color='r', linestyle='--', label='0'))#, color = 'r'# works good except the arror cannot disapear

    # line1.add_patch(plt.axvline(i_rad,color='r', linestyle='--', label='xxx'))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    # print("x = ",x)
    vl.set_xdata([i_rad,i_rad])

    # line1.set_xdata([i_rad,i_rad])
    # print("i = ",i)
    # ax.axvline(i_rad, color='r', linestyle='--', label='xxx')
    # print("i_rad = ",i_rad)

    return vl,line,U_A,U_B,U_C#U_A,U_B,U_C,,xxxx


# ani = animation.FuncAnimation(
#                                 fig, animate, interval=200, blit=True, save_count=50)
# ani = animation.FuncAnimation(fig, animate, frames=100,interval=20, blit=False)#, init_func=init

ani = animation.FuncAnimation(fig,animate,interval=50,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            )#repeat_delay=0,init_func=init

# To save the animation, use e.g.
#
# ani.save("movie.mp4")
#
# or
#
# writer = animation.FFMpegWriter(
#     fps=15, metadata=dict(artist='Me'), bitrate=1800)
# ani.save("movie.mp4", writer=writer)
plt.grid()
plt.show()
```


```python
frames=np.arange(0, 360, 1)

```


```python
###########SVPWM UA UB UC#######################
################################################
# import itertools
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import math
import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# def position(time=0):
#     x = np.cos(time)
#     y = np.sin(time)
#     return {'x' : x, 'y' : y}

sector=[1,5,0,3,2,4]
# fig, (ax_u_l,axm,axr) = plt.subplots(
#     ncols=3,
#     # nrows=2,
#     sharey=True,
#     # figsize=(6, 2),
#     figsize=(10, 5),
#     gridspec_kw=dict(width_ratios=[1,1,2], wspace=0),
# )

####################################
##--------------------------------##
###0------1------2----------------4#
##0|ax_u_l|ax_u_l|    ax_u_r      |#
###--------------------------------#
##1|    ax_d_l   |    ax_d_r      |#
###0------1------2----------------4#
##--------------------------------##
####################################
fig = plt.figure(figsize=(6, 6),constrained_layout=True)
fig.suptitle("SVPWM")
# ,constrained_layout=True
# gs = GridSpec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=0 ,hspace=0.2)
# gs = GridSpec(nrows=2,#2
#             ncols=4, #4
#             width_ratios=[2,2,2,2], 
#             height_ratios=[2, 2], 
#             wspace=0 ,
#             hspace=0.12,
#             left=0.05, 
#             right=0.95, 
#             top=0.95, 
#             bottom=0.05)#,top=2,left=1,right=2,bottom=1
# gs = fig.add_gridspec(nrows=2,ncols=4, width_ratios=[1,1,1,1], height_ratios=[1, 1], wspace=None ,hspace=0.05)
ax_u_l = fig.add_subplot()#gs[0,0:1]
# ax_u_l.set_aspect(1)

ax_u_l.yaxis.set_visible(True)
# ax_u_l.axes.xaxis.set_ticklabels([])
# ax_u_l.axes.yaxis.set_ticklabels([])
# ax_u_l.xaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1,1.5], 
#                       ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1", "1.5"])
# ax_u_l.xaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.xaxis.set_ticks(np.linspace(-1.5,1.5,11))
plt.xticks(rotation=15)
# ax_u_l.yaxis.set_ticks(np.arange(-1.5,1.5,0.25))
ax_u_l.yaxis.set_ticks(np.linspace(-1.5,1.5,11))
# ax_u_l.yaxis.set_ticks([-1.5,-1, -0.75, -0.5, -0.25,0, 0.25, 0.5, 0.75, 1, 1.5], 
#                     ["-1.5","-1", "-0.75", "-0.5", "-0.25", "0", "0.25", "0.5", "0.75", "1","1.5"])
ax_u_l.set_xlim(-1.5,1.5)
ax_u_l.set_ylim(-1.5,1.5)
# ax_u_l.spines[:].set_visible(False)
plt.grid()
# ax_u_m = fig.add_subplot(gs[0,1:2])
# ax_u_m.yaxis.set_visible(True)
# ax_u_m.axes.yaxis.set_ticklabels([])
# plt.grid()

# ax_u_r = fig.add_subplot(gs[0,2:4])
# # ax_u_r.set_box_aspect(1 / 3)
# # ax_u_r.yaxis.set_visible(False)
# ax_u_r.xaxis.set_ticks([0, np.pi/3, 2*np.pi/3, np.pi, 4*np.pi/3, 5*np.pi/3, 2*np.pi], 
#                        ["0", r"$\pi$/3", r"2*$\pi$/3", r"$\pi$", r"4*$\pi$/3", r"5*$\pi$/3", r"$2\pi$"])
# ax_u_r.yaxis.set_visible(True)
# ax_u_r.axes.yaxis.set_ticklabels([])
# plt.grid()
# ax_d_l = fig.add_subplot(gs[1,0:2])
# plt.grid()
# ax_d_r = fig.add_subplot(gs[1,2:4])
# ax_d_r.yaxis.set_visible(True)
# ax_d_r.axes.yaxis.set_ticklabels([])
# # ax_d_r.yaxis.set_visible(False)
# plt.grid()


# Pre Define
U_dc=12 #Voltage
U_m=1#2/3*U_dc


## Set axes x y ratio Axes
# ax_u_l.set_aspect(1)
# ax_u_m.set_box_aspect(1)
# ax_u_r.set_box_aspect(1 / 2)
## Plot left Axes
theta_1 = np.arange(0, 2*np.pi, 0.01)
theta = np.linspace(0, 2*np.pi, 13)
center= np.zeros((13,2))
x = np.cos(theta)
x_1 = np.cos(theta_1)
x[1::2] *= 0.5
y = np.sin(theta)
y_1 = np.sin(theta_1)
y[1::2] *= 0.5

b=[[x[::2],y[::2]]]
b_T=np.array(b).T
center[0:13:2]=b_T.reshape(7,2)
ax_u_l.plot(x[::2], y[::2])#, color='r'
ax_u_l.plot(center[:,0], center[:,1])#, color='r'
ax_u_l.plot(x_1, y_1)#, color='r'
# draw circle with initial point in left Axes
x = np.linspace(0, 2 * np.pi, 50)
ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
point_l, = ax_u_l.plot(0, 0, "o")
# plt.quiver(0, 0, 0.5, 1, angles='xy', scale=1.03, scale_units='xy', width=0.005)
line_l              = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_A          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_B          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_C          = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_A_2_U_B    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# line_l_U_B_2_U_C    = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01, color = 'r'))#, color = 'r'
U_alpha_axes_endx =1.5
U_alpha_axes_endy =0
# U_alpha_axes, = ax_u_l.plot([0,U_alpha_axes_endx], [0,U_alpha_axes_endy], "o")
U_alpha_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [U_alpha_axes_endx],[U_alpha_axes_endy], width = 0.05, color = 'r'))#
U_beta_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [U_alpha_axes_endy],[U_alpha_axes_endx], width = 0.05, color = 'r'))#
U_d_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.05, color = 'r'))#
U_q_axes = ax_u_l.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.05, color = 'r'))#

ax_u_l.grid('both')

# plot axm middle
# ax_u_m.yaxis.set_visible(False)
# ax_u_m.axes.xaxis.set_ticklabels([])
# ax_u_m.axes.yaxis.set_ticklabels([])
# ax_u_m.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"
# point_m, = ax_u_m.plot(0, 0, "o")
# line_m = ax_u_m.add_patch(plt.Arrow([0], [0],  [0],[0], width = 0.01))#, color = 'r'
# ax_u_m.grid('both')


## Plot Right Axes

# draw full curve to set view limits in right Axes
U_A=U_m*np.cos(x)
U_B=U_m*np.cos(x-2/3*np.pi)
U_C=U_m*np.cos(x+2/3*np.pi)
U_SVPWM=np.cos(x)
U_alpha=U_A
U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    U_A.set_data([], [])
    U_B.set_data([], [])
    U_C.set_data([], [])
    U_alpha.set_data([], [])
    U_beta.set_data([], [])
    U_SVPWM.set_data([], [])
    return U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    # x = frames
    x=math.radians(frames)
    pos = np.cos(x), np.sin(x)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_m*np.cos(x)
    line_l_end_y=U_m*np.sin(x)

    line_l_U_A_start_x=0
    line_l_U_A_start_y=0
    line_l_U_A_end_x=U_m*2/3*np.cos(x)
    line_l_U_A_end_y=0
    
    line_l_U_B_start_x=0
    line_l_U_B_start_y=0
    line_l_U_B_end_x=np.cos(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)#np.abs(np.cos(2/3*np.pi))
    line_l_U_B_end_y=np.sin(2/3*np.pi)*U_m*2/3*np.cos(x-2/3*np.pi)

    line_l_U_C_start_x=0
    line_l_U_C_start_y=0
    line_l_U_C_end_x=np.cos(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    line_l_U_C_end_y=np.sin(4/3*np.pi)*U_m*2/3*np.cos(x+2/3*np.pi)
    
    ## U_alpha U_beta
    U_alpha_dx=U_m*np.cos(x)
    U_alpha_dy=0
    U_beta_dx=0
    U_beta_dy=U_m*np.sin(x)
    ## U_d U_q
    U_d_dx=1.5*U_m*np.cos(x)
    U_d_dy=1.5*U_m*np.sin(x)
    U_q_dx=1.5*U_m*np.cos(x+1/2*np.pi)
    U_q_dy=1.5*U_m*np.sin(x+1/2*np.pi)

    line_l_U_A_2_U_B_start_x    = line_l_U_A_end_x
    line_l_U_A_2_U_B_start_y    = line_l_U_A_end_y
    line_l_U_A_2_U_B_end_dx     = line_l_U_B_end_x #+ 0.2 #line_l_U_B_end_x#-line_l_U_B_start_x
    line_l_U_A_2_U_B_end_dy     = line_l_U_B_end_y #+ 0.2 #line_l_U_B_end_y#-line_l_U_B_start_y
    line_l_U_B_2_U_C_start_x    = line_l_U_A_2_U_B_start_x+line_l_U_A_2_U_B_end_dx
    line_l_U_B_2_U_C_start_y    = line_l_U_A_2_U_B_start_y+line_l_U_A_2_U_B_end_dy
    line_l_U_B_2_U_C_end_dx     = line_l_U_C_end_x #+ line_l_U_C_end_x#-line_l_U_C_start_x
    line_l_U_B_2_U_C_end_dy     = line_l_U_C_end_y #+ line_l_U_C_end_y#-line_l_U_C_start_y

    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_A      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_C      = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    ## Plot US and vector
    line_l_U_A_2_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_A_2_U_B_start_x,line_l_U_A_2_U_B_start_y,line_l_U_A_2_U_B_end_dx,line_l_U_A_2_U_B_end_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    line_l_U_B_2_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_B_2_U_C_start_x,line_l_U_B_2_U_C_start_y,line_l_U_B_2_U_C_end_dx,line_l_U_B_2_U_C_end_dy, width = 0.1))#, color = 'r', color = 'r'# works good except the arror cannot disapear
    ## Plot US and U_alpha U_beta
    U_alpha_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,U_alpha_dx,U_alpha_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    U_beta_axes       = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,U_beta_dx,U_beta_dy, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    # ## Plot US and U_d U_q
    U_d_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,U_d_dx,U_d_dy,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    U_q_axes      = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,U_q_dx,U_q_dy, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_A = ax_u_l.add_patch(plt.Arrow(line_l_U_A_start_x,line_l_U_A_start_y,line_l_U_A_end_x,line_l_U_A_end_y,width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_B = ax_u_l.add_patch(plt.Arrow(line_l_U_B_start_x,line_l_U_B_start_y,line_l_U_B_end_x,line_l_U_B_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear
    # line_l_U_C = ax_u_l.add_patch(plt.Arrow(line_l_U_C_start_x,line_l_U_C_start_y,line_l_U_C_end_x,line_l_U_C_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear

    # line_m = ax_u_m.add_patch(plt.Arrow(0,0,U_m*np.cos(x),U_m*np.sin(x), width = 0.1))#, color = 'r' # works good except the arror cannot disapear

    # line = ax_u_l.arrow(0,0,np.cos(i),np.sin(i), head_width = 0.05,  
    #      head_length = 0.1) # works good except the arror cannot disapear, width = 0.1, color = 'r'
    # U_A.set_data(x, U_m*2/3*np.cos(x))
    # # U_A.set_data(x, pos[:,0])
    # U_B.set_data(x, U_m*2/3*np.cos(x-2/3*np.pi))
    # U_C.set_data(x, U_m*2/3*np.cos(x+2/3*np.pi))
    # U_SVPWM.set_data(x, U_m*np.cos(2*x))
    # U_A=np.sin(x)
    # U_B=np.cos(x)
    # U_A.set_data(x, U_A)
    # U_B.set_data(x, U_B)
    # con.xy1 = pos
    # con.xy2 = i, pos[1]
    return line_l,line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)#,init_func=init
                            
# plt.ion()
plt.show()

```


```python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider

omega = 1.0
x = np.arange(1000) / 200
y = np.sin(omega * x)

F = plt.figure()  # 创建一个Figure
axes_for_plot = F.add_axes([0.2, 0.2, 0.6, 0.6])  # 增加一个Axes，用于绘图
plot_object, = axes_for_plot.plot(x, y)  # 在这个Axes上绘图


def slider_event(event):
    new_omega = slider_object.val  # 获取控件值
    new_y = np.sin(new_omega * x)  # 计算更新后的数据
    plot_object.set_ydata(new_y)  # 利用新数据更新已有的图


axes_for_slider = F.add_axes([0.2, 0.05, 0.6, 0.05])  # 增加一个Axes，放置滑块
slider_object = Slider(label='omega',
                       valmin=0.1, valmax=2, valinit=1.0,
                       ax=axes_for_slider)
slider_object.on_changed(slider_event)  # 为滑块绑定方法

plt.show()


```


```python
import matplotlib.pyplot as plt
import numpy as np
%matplotlib widget
plt.style.use('_mpl-gallery')

# make data
np.random.seed(1)
x = np.linspace(0, 8, 16)
y1 = 3 + 4*x/8 + np.random.uniform(0.0, 0.5, len(x))
y2 = 1 + 2*x/8 + np.random.uniform(0.0, 0.5, len(x))

# plot
fig, ax = plt.subplots()

ax.fill_between(x, y1, y2, alpha=.5, linewidth=0)
ax.plot(x, (y1 + y2)/2, linewidth=2)

ax.set(xlim=(0, 8), xticks=np.arange(1, 8),
       ylim=(0, 8), yticks=np.arange(1, 8))

plt.show()
```



<div style="display: inline-block;">
    <div class="jupyter-widgets widget-label" style="text-align: center;">
        Figure
    </div>
    <img src='data:image/png;base64,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' width=200.0/>
</div>




```python
import math

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
%matplotlib widget

def beta_pdf(x, a, b):
    return (x**(a-1) * (1-x)**(b-1) * math.gamma(a + b)
            / (math.gamma(a) * math.gamma(b)))


class UpdateDist:
    def __init__(self, ax, prob=0.5):
        self.success = 0
        self.prob = prob
        self.line, = ax.plot([], [], 'k-')
        self.x = np.linspace(0, 1, 200)
        self.ax = ax

        # Set up plot parameters
        self.ax.set_xlim(0, 1)
        self.ax.set_ylim(0, 10)
        self.ax.grid(True)

        # This vertical line represents the theoretical value, to
        # which the plotted distribution should converge.
        self.ax.axvline(prob, linestyle='--', color='black')

    def __call__(self, i):
        # This way the plot can continuously run and we just keep
        # watching new realizations of the process
        if i == 0:
            self.success = 0
            self.line.set_data([], [])
            return self.line,

        # Choose success based on exceed a threshold with a uniform pick
        if np.random.rand() < self.prob:
            self.success += 1
        y = beta_pdf(self.x, self.success + 1, (i - self.success) + 1)
        self.line.set_data(self.x, y)
        return self.line,

# Fixing random state for reproducibility
np.random.seed(19680801)


fig, ax = plt.subplots()
ud = UpdateDist(ax, prob=0.7)
anim = FuncAnimation(fig, ud, frames=100, interval=1000, blit=True)
plt.show()
```


    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    Cell In [5], line 6
          4 import matplotlib.pyplot as plt
          5 from matplotlib.animation import FuncAnimation
    ----> 6 get_ipython().run_line_magic('matplotlib', 'widget')
          8 def beta_pdf(x, a, b):
          9     return (x**(a-1) * (1-x)**(b-1) * math.gamma(a + b)
         10             / (math.gamma(a) * math.gamma(b)))
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\interactiveshell.py:2364, in InteractiveShell.run_line_magic(self, magic_name, line, _stack_depth)
       2362     kwargs['local_ns'] = self.get_local_scope(stack_depth)
       2363 with self.builtin_trap:
    -> 2364     result = fn(*args, **kwargs)
       2365 return result
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\magics\pylab.py:99, in PylabMagics.matplotlib(self, line)
         97     print("Available matplotlib backends: %s" % backends_list)
         98 else:
    ---> 99     gui, backend = self.shell.enable_matplotlib(args.gui.lower() if isinstance(args.gui, str) else args.gui)
        100     self._show_matplotlib_backend(args.gui, backend)
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\interactiveshell.py:3528, in InteractiveShell.enable_matplotlib(self, gui)
       3524         print('Warning: Cannot change to a different GUI toolkit: %s.'
       3525                 ' Using %s instead.' % (gui, self.pylab_gui_select))
       3526         gui, backend = pt.find_gui_and_backend(self.pylab_gui_select)
    -> 3528 pt.activate_matplotlib(backend)
       3529 configure_inline_support(self, backend)
       3531 # Now we must activate the gui pylab wants to use, and fix %run to take
       3532 # plot updates into account
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\IPython\core\pylabtools.py:360, in activate_matplotlib(backend)
        355 # Due to circular imports, pyplot may be only partially initialised
        356 # when this function runs.
        357 # So avoid needing matplotlib attribute-lookup to access pyplot.
        358 from matplotlib import pyplot as plt
    --> 360 plt.switch_backend(backend)
        362 plt.show._needmain = False
        363 # We need to detect at runtime whether show() is called by the user.
        364 # For this, we wrap it into a decorator which adds a 'called' flag.
    

    File ~\AppData\Roaming\Python\Python310\site-packages\matplotlib\pyplot.py:265, in switch_backend(newbackend)
        262         rcParamsOrig["backend"] = "agg"
        263         return
    --> 265 backend_mod = importlib.import_module(
        266     cbook._backend_module_name(newbackend))
        268 required_framework = _get_required_interactive_framework(backend_mod)
        269 if required_framework is not None:
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\importlib\__init__.py:126, in import_module(name, package)
        124             break
        125         level += 1
    --> 126 return _bootstrap._gcd_import(name[level:], package, level)
    

    File <frozen importlib._bootstrap>:1050, in _gcd_import(name, package, level)
    

    File <frozen importlib._bootstrap>:1027, in _find_and_load(name, import_)
    

    File <frozen importlib._bootstrap>:992, in _find_and_load_unlocked(name, import_)
    

    File <frozen importlib._bootstrap>:241, in _call_with_frames_removed(f, *args, **kwds)
    

    File <frozen importlib._bootstrap>:1050, in _gcd_import(name, package, level)
    

    File <frozen importlib._bootstrap>:1027, in _find_and_load(name, import_)
    

    File <frozen importlib._bootstrap>:1004, in _find_and_load_unlocked(name, import_)
    

    ModuleNotFoundError: No module named 'ipympl'


$
x=\frac{\sqrt{3}T_s}{U_{dc}}U_{\beta}
$\
$
y=\frac{\sqrt{3}T_s}{U_{dc}}( \frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta})
$\
$
z=\frac{\sqrt{3}T_s}{U_{dc}}( -\frac{\sqrt{3}}{2}U_{\alpha}+\frac{1}{2}U_{\beta})
$

| Sector |  1  |  2  |  3  |  4  |  5  |  6 |
|   ---  | --- | --- | --- | --- | --- | ---|
|    N   |  3  |  1  |  5  |  4  |  6  |  2 |
|  phase | 4->6| 6->2| 2->3| 3->1| 1->5|5->4|
|  T_1st |  -z |  y  |  x  |   z |  -y | -x |
|  T_2nd |  x  |  z  |  -y |  -x |  -z |  y |
|   T_0  |  3  |  1  |  5  |  4  |  6  |  2 |

2 4 5 6 not correct


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
#创建figure窗口，figsize设置窗口的大小
# fig, ax = plt.figure()
# fig, ax = plt.subplots()#figsize = (8.0,8.0)
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=12
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)
# theta_rad_2=math.radians(theta_2)
# ax_u_r.plot(center[:,0], center[:,1])#, color='r'
###Draw a Hexagon ############
ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))

# x = np.linspace(0, 2 * np.pi, 50)
# ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"

#设置坐标轴刻度
# my_x_ticks = np.linspace(-2, 2, 10)
# #对比范围和名称的区别
# #my_x_ticks = np.arange(-5, 2, 0.5)
# my_y_ticks = np.linspace(-2, 2, 10)
# ax_u_l.set_xticks(my_x_ticks)
# ax_u_l.set_yticks(my_x_ticks)
# plt.xticks()
# plt.yticks(my_y_ticks)
# ax_u_l.plot(theta_x,theta_y)
theta_deg=40
theta_radian =np.deg2rad(theta_deg) #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)
# theta_radian =41/24*np.pi #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)

U_alpha =   U_m*np.cos(theta_radian)
U_beta  =   U_m*np.sin(theta_radian)
U_S_x   =   U_dc*np.cos(theta_radian)
U_S_y   =   U_dc*np.sin(theta_radian)
U_A_x   =   U_m*np.cos(theta_radian)
U_A_y   =   0
U_B_x   =   U_m*np.cos(2/3*np.pi)*np.cos(theta_radian-2/3*np.pi)
U_B_y   =   U_m*np.sin(2/3*np.pi)*np.cos(theta_radian-2/3*np.pi)
U_C_x   =   U_m*np.cos(4/3*np.pi)*np.cos(theta_radian+2/3*np.pi)
U_C_y   =   U_m*np.sin(4/3*np.pi)*np.cos(theta_radian+2/3*np.pi)
#########Calculate N from U_alpha U_beta#####################################
U_ref1=U_beta
U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
if U_ref1>0:
    A = 1
else :
    A = 0
if U_ref2>0:
     B = 1
else :
     B = 0
if U_ref3>0:
    C = 1
else :
     C = 0
N=4*C+2*B+A
print("N = ",N)
T_x = np.sqrt(3)*Ts*U_beta/U_dc
T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
# sector=math.ceil(theta_radian/(1/3*np.pi))# up 
sector=int(theta_radian/(1/3*np.pi)+1)# up
print("sector = ",sector)
match sector:
    case 1:#Sector 1 N 3
        ####Sector 4-6 ####
        T_1_temp=-T_z
        T_2_temp=T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
        U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_6_end_x
        U_4_2_Us_end_dy=U_6_end_y

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_4_end_x
        U_6_2_Us_end_dy=U_4_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_4_end_x+U_6_end_x
        U_S_m_end_y=U_4_end_y+U_6_end_y

        # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
        print("U_4 = ",T_1*2/3*U_dc)
    case 2:#Sector 2 N 1
        ####Sector 6-2 ####
        T_1_temp = T_y
        T_2_temp = T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_2_end_x
        U_6_2_Us_end_dy=U_2_end_y

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_6_end_x
        U_2_2_Us_end_dy=U_6_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_6_end_x+U_2_end_x
        U_S_m_end_y=U_6_end_y+U_2_end_y

        # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
    case 3:#Sector 3 N 5
        ####Sector 2-3 ####
        T_1_temp = T_x
        T_2_temp = -T_y
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
        U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_3_end_x
        U_2_2_Us_end_dy=U_3_end_y

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_2_end_x
        U_3_2_Us_end_dy=U_2_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_2_end_x+U_3_end_x
        U_S_m_end_y=U_2_end_y+U_3_end_y

        # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        # U_c_phase
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)

    case 4:#Sector 4 N 4
        ####Sector 3-1 ####
        T_1_temp = T_z
        T_2_temp = -T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
        U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_1_end_x
        U_3_2_Us_end_dy=U_1_end_y

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_3_end_x
        U_1_2_Us_end_dy=U_3_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_3_end_x+U_1_end_x
        U_S_m_end_y=U_3_end_y+U_1_end_y
        
        # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)

    case 5:#Sector 5 N 6
        ####Sector 1-5 ####
        T_1_temp = -T_y
        T_2_temp = -T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_5_end_x
        U_1_2_Us_end_dy=U_5_end_y

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_1_end_x
        U_5_2_Us_end_dy=U_1_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_1_end_x+U_5_end_x
        U_S_m_end_y=U_1_end_y+U_5_end_y
        
        # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
    
    case 6:#Sector 6 N 2
        ####Sector 5-4 ####
        T_1_temp =-T_x 
        T_2_temp = T_y
        if (T_1_temp+T_2_temp)>=Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
        U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_4_end_x
        U_5_2_Us_end_dy=U_4_end_y

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_5_end_x
        U_4_2_Us_end_dy=U_5_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_5_end_x+U_4_end_x
        U_S_m_end_y=U_5_end_y+U_4_end_y

        # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
# print("T_x = ",T_x)
# print("T_y = ",T_y)
# print("T_z = ",T_z)
# U_alpha_Start_x     =   0
# U_alpha_Start_y     =   0
# U_alpha_End_x       =   U_alpha
# U_alpha_End_y       =   0

# U_beta_Start_x      =   0
# U_beta_Start_y      =   0
# U_beta_End_x        =   0
# U_beta_End_y        =   U_beta

# U_S_Start_x =   0
# U_S_Start_y =   0
# U_S_End_x   =   U_S_x
# U_S_End_y   =   U_S_y

# U_A_Start_x =   0
# U_A_Start_y =   0
# U_A_End_x   =   U_A_x
# U_A_End_y   =   U_A_y

# U_B_Start_x =   0
# U_B_Start_y =   0
# U_B_End_x   =   U_B_x
# U_B_End_y   =   U_B_y

# U_C_Start_x =   0
# U_C_Start_y =   0
# U_C_End_x   =   U_C_x
# U_C_End_y   =   U_C_y

# U_A_2_U_B_Start_x   = U_A_End_x
# U_A_2_U_B_Start_y   = U_A_End_y
# U_A_2_U_B_End_dx     = U_B_End_x
# U_A_2_U_B_End_dy     = U_B_End_y

# U_B_2_U_C_Start_x   = U_A_2_U_B_Start_x + U_A_2_U_B_End_dx
# U_B_2_U_C_Start_y   = U_A_2_U_B_Start_y + U_A_2_U_B_End_dy
# U_B_2_U_C_End_dx     = U_C_End_x
# U_B_2_U_C_End_dy     = U_C_End_y



# U_S = ax_u_l.add_patch(plt.Arrow(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, width = 0.05, color = 'b'))


# U_A = ax.add_patch(plt.Arrow(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, width = 0.05, color = 'g'))
# U_B = ax.add_patch(plt.Arrow(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, width = 0.05, color = 'r'))
# U_C = ax.add_patch(plt.Arrow(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, width = 0.05, color = 'c'))
# U_alpha = ax.add_patch(plt.Arrow(U_alpha_Start_x,U_alpha_Start_y,U_alpha_End_x,U_alpha_End_y, width = 0.05, color = 'r'))
# U_beta = ax.add_patch(plt.Arrow(U_beta_Start_x,U_beta_Start_y,U_beta_End_x,U_beta_End_y, width = 0.05, color = 'c'))
# U_A_2_U_B = ax.add_patch(plt.Arrow(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_dx,U_A_2_U_B_End_dy, width = 0.05, color = 'm'))
# U_B_2_U_C = ax.add_patch(plt.Arrow(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_dx,U_B_2_U_C_End_dy, width = 0.05, color = 'y'))
# print("U_B_2_U_C_Start_x = ",U_B_2_U_C_Start_x)
# print("U_B_2_U_C_Start_y = ",U_B_2_U_C_Start_y)
# print("U_B_2_U_C_End_x   = ",U_B_2_U_C_End_x)
# print("U_B_2_U_C_End_y   = ",U_B_2_U_C_End_y)
# U_S = ax.plot(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, color = 'b')
# U_A = ax.plot(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, color = 'g')
# U_B = ax.plot(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, color = 'r')
# U_C = ax.plot(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, color = 'c')
# U_A_2_U_B = ax.plot(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_x,U_A_2_U_B_End_y, color = 'm')
# U_B_2_U_C = ax.plot(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_x,U_B_2_U_C_End_y, color = 'y')

plt.grid()
plt.show()
```

    N =  3
    sector =  1
    T_1_temp =  1.9746542181734927e-05
    T_2_temp =  3.7111359948427954e-05
    T_1 =  1.736481776669304e-05
    T_2 =  3.2635182233306965e-05
    T_0 =  0.0
    U_4 =  0.00013891854213354433
    


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
#创建figure窗口，figsize设置窗口的大小
# fig, ax = plt.figure()
# fig, ax = plt.subplots()#figsize = (8.0,8.0)
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)
# theta_rad_2=math.radians(theta_2)
# ax_u_r.plot(center[:,0], center[:,1])#, color='r'
###Draw a Hexagon ############
ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))

# x = np.linspace(0, 2 * np.pi, 50)
# ax_u_l.plot(U_m*np.cos(x), U_m*np.sin(x), lw=0.3)#, "k"

#设置坐标轴刻度
# my_x_ticks = np.linspace(-2, 2, 10)
# #对比范围和名称的区别
# #my_x_ticks = np.arange(-5, 2, 0.5)
# my_y_ticks = np.linspace(-2, 2, 10)
# ax_u_l.set_xticks(my_x_ticks)
# ax_u_l.set_yticks(my_x_ticks)
# plt.xticks()
# plt.yticks(my_y_ticks)
# ax_u_l.plot(theta_x,theta_y)
theta_deg=40
theta_radian =np.deg2rad(theta_deg) #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)
# theta_radian =41/24*np.pi #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)

U_alpha =   U_m*np.cos(theta_radian)
U_beta  =   U_m*np.sin(theta_radian)
U_S_x   =   U_dc*np.cos(theta_radian)
U_S_y   =   U_dc*np.sin(theta_radian)
U_A_x   =   U_m*np.cos(theta_radian)
U_A_y   =   0
U_B_x   =   U_m*np.cos(2/3*np.pi)*np.cos(theta_radian-2/3*np.pi)
U_B_y   =   U_m*np.sin(2/3*np.pi)*np.cos(theta_radian-2/3*np.pi)
U_C_x   =   U_m*np.cos(4/3*np.pi)*np.cos(theta_radian+2/3*np.pi)
U_C_y   =   U_m*np.sin(4/3*np.pi)*np.cos(theta_radian+2/3*np.pi)
#########Calculate N from U_alpha U_beta#####################################
U_ref1=U_beta
U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
if U_ref1>0:
    A = 1
else :
    A = 0
if U_ref2>0:
     B = 1
else :
     B = 0
if U_ref3>0:
    C = 1
else :
     C = 0
N=4*C+2*B+A
print("N = ",N)
T_x = np.sqrt(3)*Ts*U_beta/U_dc
T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
# sector=math.ceil(theta_radian/(1/3*np.pi))# up 
sector=int(theta_radian/(1/3*np.pi)+1)# up
print("sector = ",sector)
match sector:
    case 1:#Sector 1 N 3
        ####Sector 4-6 ####
        T_1_temp=-T_z
        T_2_temp=T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
        U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_6_end_x
        U_4_2_Us_end_dy=U_6_end_y

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_4_end_x
        U_6_2_Us_end_dy=U_4_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_4_end_x+U_6_end_x
        U_S_m_end_y=U_4_end_y+U_6_end_y

        # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
        print("U_4 = ",T_1*2/3*U_dc)
    case 2:#Sector 2 N 1
        ####Sector 6-2 ####
        T_1_temp = T_y
        T_2_temp = T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_6_start_x=0
        U_6_start_y=0
        U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
        U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

        U_6_2_Us_start_x=U_6_end_x
        U_6_2_Us_start_y=U_6_end_y
        U_6_2_Us_end_dx=U_2_end_x
        U_6_2_Us_end_dy=U_2_end_y

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_6_end_x
        U_2_2_Us_end_dy=U_6_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_6_end_x+U_2_end_x
        U_S_m_end_y=U_6_end_y+U_2_end_y

        # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
    case 3:#Sector 3 N 5
        ####Sector 2-3 ####
        T_1_temp = T_x
        T_2_temp = -T_y
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_2_start_x=0
        U_2_start_y=0
        U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
        U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
        U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

        U_2_2_Us_start_x=U_2_end_x
        U_2_2_Us_start_y=U_2_end_y
        U_2_2_Us_end_dx=U_3_end_x
        U_2_2_Us_end_dy=U_3_end_y

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_2_end_x
        U_3_2_Us_end_dy=U_2_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_2_end_x+U_3_end_x
        U_S_m_end_y=U_2_end_y+U_3_end_y

        # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        # U_c_phase
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)

    case 4:#Sector 4 N 4
        ####Sector 3-1 ####
        T_1_temp = T_z
        T_2_temp = -T_x
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_3_start_x=0
        U_3_start_y=0
        U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
        U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

        U_3_2_Us_start_x=U_3_end_x
        U_3_2_Us_start_y=U_3_end_y
        U_3_2_Us_end_dx=U_1_end_x
        U_3_2_Us_end_dy=U_1_end_y

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_3_end_x
        U_1_2_Us_end_dy=U_3_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_3_end_x+U_1_end_x
        U_S_m_end_y=U_3_end_y+U_1_end_y
        
        # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)

    case 5:#Sector 5 N 6
        ####Sector 1-5 ####
        T_1_temp = -T_y
        T_2_temp = -T_z
        if (T_1_temp+T_2_temp)>Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2

        U_1_start_x=0
        U_1_start_y=0
        U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
        U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

        U_1_2_Us_start_x=U_1_end_x
        U_1_2_Us_start_y=U_1_end_y
        U_1_2_Us_end_dx=U_5_end_x
        U_1_2_Us_end_dy=U_5_end_y

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_1_end_x
        U_5_2_Us_end_dy=U_1_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_1_end_x+U_5_end_x
        U_S_m_end_y=U_1_end_y+U_5_end_y
        
        # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
    
    case 6:#Sector 6 N 2
        ####Sector 5-4 ####
        T_1_temp =-T_x 
        T_2_temp = T_y
        if (T_1_temp+T_2_temp)>=Ts:
            T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
            T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
        else :
            T_1 = T_1_temp
            T_2 = T_2_temp
        T_0 = Ts-T_1-T_2
        U_5_start_x=0
        U_5_start_y=0
        U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
        U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
        U_4_start_x=0
        U_4_start_y=0
        U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
        U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

        U_5_2_Us_start_x=U_5_end_x
        U_5_2_Us_start_y=U_5_end_y
        U_5_2_Us_end_dx=U_4_end_x
        U_5_2_Us_end_dy=U_4_end_y

        U_4_2_Us_start_x=U_4_end_x
        U_4_2_Us_start_y=U_4_end_y
        U_4_2_Us_end_dx=U_5_end_x
        U_4_2_Us_end_dy=U_5_end_y

        U_S_m_start_x=0
        U_S_m_start_y=0
        U_S_m_end_x=U_5_end_x+U_4_end_x
        U_S_m_end_y=U_5_end_y+U_4_end_y

        # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        
        U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
        U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
        U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
        U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
        U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
        print("T_1_temp = ",T_1_temp)
        print("T_2_temp = ",T_2_temp)
        print("T_1 = ",T_1)
        print("T_2 = ",T_2)
        print("T_0 = ",T_0)
# print("T_x = ",T_x)
# print("T_y = ",T_y)
# print("T_z = ",T_z)
# U_alpha_Start_x     =   0
# U_alpha_Start_y     =   0
# U_alpha_End_x       =   U_alpha
# U_alpha_End_y       =   0

# U_beta_Start_x      =   0
# U_beta_Start_y      =   0
# U_beta_End_x        =   0
# U_beta_End_y        =   U_beta

# U_S_Start_x =   0
# U_S_Start_y =   0
# U_S_End_x   =   U_S_x
# U_S_End_y   =   U_S_y

# U_A_Start_x =   0
# U_A_Start_y =   0
# U_A_End_x   =   U_A_x
# U_A_End_y   =   U_A_y

# U_B_Start_x =   0
# U_B_Start_y =   0
# U_B_End_x   =   U_B_x
# U_B_End_y   =   U_B_y

# U_C_Start_x =   0
# U_C_Start_y =   0
# U_C_End_x   =   U_C_x
# U_C_End_y   =   U_C_y

# U_A_2_U_B_Start_x   = U_A_End_x
# U_A_2_U_B_Start_y   = U_A_End_y
# U_A_2_U_B_End_dx     = U_B_End_x
# U_A_2_U_B_End_dy     = U_B_End_y

# U_B_2_U_C_Start_x   = U_A_2_U_B_Start_x + U_A_2_U_B_End_dx
# U_B_2_U_C_Start_y   = U_A_2_U_B_Start_y + U_A_2_U_B_End_dy
# U_B_2_U_C_End_dx     = U_C_End_x
# U_B_2_U_C_End_dy     = U_C_End_y



# U_S = ax_u_l.add_patch(plt.Arrow(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, width = 0.05, color = 'b'))


# U_A = ax.add_patch(plt.Arrow(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, width = 0.05, color = 'g'))
# U_B = ax.add_patch(plt.Arrow(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, width = 0.05, color = 'r'))
# U_C = ax.add_patch(plt.Arrow(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, width = 0.05, color = 'c'))
# U_alpha = ax.add_patch(plt.Arrow(U_alpha_Start_x,U_alpha_Start_y,U_alpha_End_x,U_alpha_End_y, width = 0.05, color = 'r'))
# U_beta = ax.add_patch(plt.Arrow(U_beta_Start_x,U_beta_Start_y,U_beta_End_x,U_beta_End_y, width = 0.05, color = 'c'))
# U_A_2_U_B = ax.add_patch(plt.Arrow(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_dx,U_A_2_U_B_End_dy, width = 0.05, color = 'm'))
# U_B_2_U_C = ax.add_patch(plt.Arrow(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_dx,U_B_2_U_C_End_dy, width = 0.05, color = 'y'))
# print("U_B_2_U_C_Start_x = ",U_B_2_U_C_Start_x)
# print("U_B_2_U_C_Start_y = ",U_B_2_U_C_Start_y)
# print("U_B_2_U_C_End_x   = ",U_B_2_U_C_End_x)
# print("U_B_2_U_C_End_y   = ",U_B_2_U_C_End_y)
# U_S = ax.plot(U_S_Start_x,U_S_Start_y,U_S_End_x,U_S_End_y, color = 'b')
# U_A = ax.plot(U_A_Start_x,U_A_Start_y,U_A_End_x,U_A_End_y, color = 'g')
# U_B = ax.plot(U_B_Start_x,U_B_Start_y,U_B_End_x,U_B_End_y, color = 'r')
# U_C = ax.plot(U_C_Start_x,U_C_Start_y,U_C_End_x,U_C_End_y, color = 'c')
# U_A_2_U_B = ax.plot(U_A_2_U_B_Start_x,U_A_2_U_B_Start_y,U_A_2_U_B_End_x,U_A_2_U_B_End_y, color = 'm')
# U_B_2_U_C = ax.plot(U_B_2_U_C_Start_x,U_B_2_U_C_Start_y,U_B_2_U_C_End_x,U_B_2_U_C_End_y, color = 'y')

plt.grid()
plt.show()
```


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
##########Annoate theta#####################################
theta_template = 'theta = %.0fdeg'
theta_text = ax_u_l.text(0.05, 0.9, '', transform=ax_u_l.transAxes, fontsize = 14)  
theta_text.set_text(theta_template % (0))#'theta = %.0fs'
theta_text.set_text('theta = %.0fdeg')

#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.plot(2/3*theta_1_x,2/3*theta_1_y)
ax_u_l.plot(2/3*(np.sqrt(3)/2)*theta_1_x,2/3*(np.sqrt(3)/2)*theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)

ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot(2/3*theta_x, 2/3*theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))


line, = ax_u_l.plot([0], [0],'k--')

origin, = ax_u_l.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_S_m          = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))

theta_Sector_Seq=np.linspace(1/4*np.pi,2*np.pi+1/4*np.pi,7)
# theta_len=np.size(theta)
theta_Sector_Seq_x=U_dc*np.cos(theta_Sector_Seq)
theta_Sector_Seq_y=U_dc*np.sin(theta_Sector_Seq)
offset_fac_x=0.8
offset_fac_y=0.8
# Sector_1_Seq_1_start_x  =   offset_fac_x*theta_x[0]
# Sector_1_Seq_1_start_y  =   offset_fac_y*theta_x[0]
# Sector_1_Seq_1_end_dx    =   0 + (1-offset_fac_x)*theta_x[0]
# Sector_1_Seq_1_end_dy    =   0 + (1-offset_fac_y)*theta_y[0]

Sector_1_Seq_1_start_x  =   0 + (1-offset_fac_x)*theta_x[0]
Sector_1_Seq_1_start_y  =   0 + (1-offset_fac_y)*theta_y[0]
Sector_1_Seq_1_end_dx    =   offset_fac_x*theta_x[0]
Sector_1_Seq_1_end_dy    =   offset_fac_y*theta_x[0]
# Sector_1_Seq_2_start_x  =   offset_fac_x*theta_x[0]
# Sector_1_Seq_2_start_y  =   offset_fac_y*theta_x[0]
# Sector_1_Seq_2_end_dx    =
# Sector_1_Seq_2_end_dy    =
# Sector_1_Seq_3_start_x  =
# Sector_1_Seq_3_start_y  =
# Sector_1_Seq_3_end_dx    =
# Sector_1_Seq_3_end_dy    =

Sector_1_Seq_1 = ax_u_l.add_patch(plt.Arrow(Sector_1_Seq_1_start_x,Sector_1_Seq_1_start_y,Sector_1_Seq_1_end_dx,Sector_1_Seq_1_end_dx, width = 0.05, color = 'b'))
print("Sector_1_Seq_1_start_x = ",Sector_1_Seq_1_start_x)
print("Sector_1_Seq_1_start_y = ",Sector_1_Seq_1_start_y)
print("Sector_1_Seq_1_end_dx = ",Sector_1_Seq_1_end_dx)
print("Sector_1_Seq_1_end_dy = ",Sector_1_Seq_1_end_dy)

# Sector_1_Seq_2 = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
# Sector_1_Seq_3 = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
# theObject, = ax_u_l.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# x = np.linspace(0, 2 * np.pi, 50)
# U_A=U_m*np.cos(x)
# U_B=U_m*np.cos(x-2/3*np.pi)
# U_C=U_m*np.cos(x+2/3*np.pi)
# U_SVPWM=np.cos(x)
# U_alpha=U_A
# U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    # line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    # U_A.set_data([], [])
    # U_B.set_data([], [])
    # U_C.set_data([], [])
    # U_alpha.set_data([], [])
    # U_beta.set_data([], [])
    # U_SVPWM.set_data([], [])

    # theObject.set_data([], [])
    theta_text.set_text('')
    # theta_text.set_text(theta_template % (0))
    return theta_text,#theObject#U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    theta_deg = frames
    theta_radian=math.radians(theta_deg)
    U_alpha=np.cos(theta_radian)
    U_beta=np.sin(theta_radian)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_alpha
    line_l_end_y=U_beta
    theta_text.set_text(theta_template % (theta_deg))
    #########Calculate N from U_alpha U_beta#####################################
    U_ref1=U_beta
    U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
    U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
    if U_ref1>0:
        A = 1
    else :
        A = 0
    if U_ref2>0:
        B = 1
    else :
        B = 0
    if U_ref3>0:
        C = 1
    else :
        C = 0
    N=4*C+2*B+A
    print("N = ",N)
    T_x = np.sqrt(3)*Ts*U_beta/U_dc
    T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    # sector=math.ceil(theta_radian/(1/3*np.pi))# up 
    sector=int(theta_radian/(1/3*np.pi)+1)# up 
    print("sector = ",sector)
    print("deg = ",theta_deg)
    match sector:
        case 1:#Sector 1 N 3
            ####Sector 4-6 ####
            T_1_temp=-T_z
            T_2_temp=T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
            U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_6_end_x
            U_4_2_Us_end_dy=U_6_end_y

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_4_end_x
            U_6_2_Us_end_dy=U_4_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_4_end_x+U_6_end_x
            U_S_m_end_y=U_4_end_y+U_6_end_y

            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        case 2:#Sector 2 N 1
            ####Sector 6-2 ####
            T_1_temp = T_y
            T_2_temp = T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_2_end_x
            U_6_2_Us_end_dy=U_2_end_y

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_6_end_x
            U_2_2_Us_end_dy=U_6_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_6_end_x+U_2_end_x
            U_S_m_end_y=U_6_end_y+U_2_end_y

            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        case 3:#Sector 3 N 5
            ####Sector 2-3 ####
            T_1_temp = T_x
            T_2_temp = -T_y
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
            U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_3_end_x
            U_2_2_Us_end_dy=U_3_end_y

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_2_end_x
            U_3_2_Us_end_dy=U_2_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_2_end_x+U_3_end_x
            U_S_m_end_y=U_2_end_y+U_3_end_y

            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            # U_c_phase
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 4:#Sector 4 N 4
            ####Sector 3-1 ####
            T_1_temp = T_z
            T_2_temp = -T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
            U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_1_end_x
            U_3_2_Us_end_dy=U_1_end_y

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_3_end_x
            U_1_2_Us_end_dy=U_3_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_3_end_x+U_1_end_x
            U_S_m_end_y=U_3_end_y+U_1_end_y
            
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 5:#Sector 5 N 6
            ####Sector 1-5 ####
            T_1_temp = -T_y
            T_2_temp = -T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_5_end_x
            U_1_2_Us_end_dy=U_5_end_y

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_1_end_x
            U_5_2_Us_end_dy=U_1_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_1_end_x+U_5_end_x
            U_S_m_end_y=U_1_end_y+U_5_end_y
            
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        
        case 6:#Sector 6 N 2
            ####Sector 5-4 ####
            T_1_temp =-T_x 
            T_2_temp = T_y
            if (T_1_temp+T_2_temp)>=Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
            U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_4_end_x
            U_5_2_Us_end_dy=U_4_end_y

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_5_end_x
            U_4_2_Us_end_dy=U_5_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_5_end_x+U_4_end_x
            U_S_m_end_y=U_5_end_y+U_4_end_y

            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("theta_deg = ",theta_deg)
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear    
    return line_l,theta_text,U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m #line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point
    # return line_l,#U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m#line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,init_func=init,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
  
                            repeat_delay=0)  #,init_func=init

# ax_u_l.grid()
plt.show()
```

    Sector_1_Seq_1_start_x =  0.19999999999999996
    Sector_1_Seq_1_start_y =  0.0
    Sector_1_Seq_1_end_dx =  0.8
    Sector_1_Seq_1_end_dy =  0.8
    N =  2
    sector =  1
    deg =  0
    theta_deg =  0
    T_1_temp =  7.5e-05
    T_2_temp =  0.0
    T_1 =  5e-05
    T_2 =  0.0
    T_0 =  0.0
    N =  3
    sector =  1
    deg =  1
    theta_deg =  1
    T_1_temp =  7.423286577013641e-05
    T_2_temp =  1.511422733185859e-06
    T_1 =  4.9002286005287666e-05
    T_2 =  9.97713994712331e-07
    T_0 =  5.505714157152952e-21
    N =  3
    sector =  1
    deg =  2
    theta_deg =  2
    T_1_temp =  7.344311949024933e-05
    T_2_temp =  3.0223850723657087e-06
    T_1 =  4.802369376253133e-05
    T_2 =  1.976306237468674e-06
    T_0 =  8.470329472543003e-22
    N =  3
    sector =  1
    deg =  3
    theta_deg =  3
    T_1_temp =  7.263100172470602e-05
    T_2_temp =  4.532426763774014e-06
    T_1 =  4.706309915684302e-05
    T_2 =  2.9369008431569853e-06
    T_0 =  -4.235164736271502e-21
    N =  3
    sector =  1
    deg =  4
    theta_deg =  4
    T_1_temp =  7.179675985244507e-05
    T_2_temp =  6.041087834083471e-06
    T_1 =  4.611944059757898e-05
    T_2 =  3.88055940242102e-06
    T_0 =  2.541098841762901e-21
    N =  3
    sector =  1
    deg =  5
    theta_deg =  5
    T_1_temp =  7.094064799162224e-05
    T_2_temp =  7.5479087305173325e-06
    T_1 =  4.5191713897072935e-05
    T_2 =  4.808286102927068e-06
    T_0 =  -8.470329472543003e-22
    N =  3
    sector =  1
    deg =  6
    theta_deg =  6
    T_1_temp =  7.006292692220367e-05
    T_2_temp =  9.052430460833645e-06
    T_1 =  4.4278967598536984e-05
    T_2 =  5.7210324014630094e-06
    T_0 =  8.470329472543003e-21
    N =  3
    sector =  1
    deg =  7
    theta_deg =  7
    T_1_temp =  6.916386400652979e-05
    T_2_temp =  1.0554194733138725e-05
    T_1 =  4.338029870521242e-05
    T_2 =  6.619701294787583e-06
    T_0 =  -2.541098841762901e-21
    N =  3
    sector =  1
    deg =  8
    theta_deg =  8
    T_1_temp =  6.824373310787412e-05
    T_2_temp =  1.2052744095487311e-05
    T_1 =  4.2494848768419734e-05
    T_2 =  7.505151231580276e-06
    T_0 =  -8.470329472543003e-21
    N =  3
    sector =  1
    deg =  9
    theta_deg =  9
    T_1_temp =  6.730281450702189e-05
    T_2_temp =  1.3547622075226859e-05
    T_1 =  4.16218002969935e-05
    T_2 =  8.378199703006507e-06
    T_0 =  -1.6940658945086007e-21
    N =  3
    sector =  1
    deg =  10
    theta_deg =  10
    T_1_temp =  6.634139481689384e-05
    T_2_temp =  1.5038373318043529e-05
    T_1 =  4.0760373454795235e-05
    T_2 =  9.239626545204769e-06
    T_0 =  -1.6940658945086007e-21
    N =  3
    sector =  1
    deg =  11
    theta_deg =  11
    T_1_temp =  6.535976689524102e-05
    T_2_temp =  1.652454372666753e-05
    T_1 =  3.9909823016665724e-05
    T_2 =  1.0090176983334284e-05
    T_0 =  -5.082197683525802e-21
    


```python
theta_x
```




    array([ 1. ,  0.5, -0.5, -1. , -0.5,  0.5,  1. ])




```python

2.09510/6.22967
```




    0.3363099490021141




```python
0.25185/0.74815
```




    0.33663035487535925




```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
##########Annoate theta#####################################
theta_template = 'theta = %.0fdeg'
theta_text = ax_u_l.text(0.05, 0.9, '', transform=ax_u_l.transAxes, fontsize = 14)  
theta_text.set_text(theta_template % (0))#'theta = %.0fs'
theta_text.set_text('theta = %.0fdeg')

#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.plot(2/3*theta_1_x,2/3*theta_1_y)
ax_u_l.plot(2/3*(np.sqrt(3)/2)*theta_1_x,2/3*(np.sqrt(3)/2)*theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)

ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot(2/3*theta_x, 2/3*theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))


line, = ax_u_l.plot([0], [0],'k--')

origin, = ax_u_l.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_S_m          = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))

# theObject, = ax_u_l.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# x = np.linspace(0, 2 * np.pi, 50)
# U_A=U_m*np.cos(x)
# U_B=U_m*np.cos(x-2/3*np.pi)
# U_C=U_m*np.cos(x+2/3*np.pi)
# U_SVPWM=np.cos(x)
# U_alpha=U_A
# U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    # line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    # U_A.set_data([], [])
    # U_B.set_data([], [])
    # U_C.set_data([], [])
    # U_alpha.set_data([], [])
    # U_beta.set_data([], [])
    # U_SVPWM.set_data([], [])

    # theObject.set_data([], [])
    theta_text.set_text('')
    # theta_text.set_text(theta_template % (0))
    return theta_text,#theObject#U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    theta_deg = frames
    theta_radian=math.radians(theta_deg)
    U_alpha=np.cos(theta_radian)
    U_beta=np.sin(theta_radian)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_alpha
    line_l_end_y=U_beta
    theta_text.set_text(theta_template % (theta_deg))
    #########Calculate N from U_alpha U_beta#####################################
    U_ref1=U_beta
    U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
    U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
    if U_ref1>0:
        A = 1
    else :
        A = 0
    if U_ref2>0:
        B = 1
    else :
        B = 0
    if U_ref3>0:
        C = 1
    else :
        C = 0
    N=4*C+2*B+A
    print("N = ",N)
    T_x = np.sqrt(3)*Ts*U_beta/U_dc
    T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    # sector=math.ceil(theta_radian/(1/3*np.pi))# up 
    sector=int(theta_radian/(1/3*np.pi)+1)# up 
    print("sector = ",sector)
    print("deg = ",theta_deg)
    match sector:
        case 1:#Sector 1 N 3
            ####Sector 4-6 ####
            T_1_temp=-T_z
            T_2_temp=T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
            U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_6_end_x
            U_4_2_Us_end_dy=U_6_end_y

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_4_end_x
            U_6_2_Us_end_dy=U_4_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_4_end_x+U_6_end_x
            U_S_m_end_y=U_4_end_y+U_6_end_y

            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("U_4 = ",T_1*2/3*U_dc)
        case 2:#Sector 2 N 1
            ####Sector 6-2 ####
            T_1_temp = T_y
            T_2_temp = T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_2_end_x
            U_6_2_Us_end_dy=U_2_end_y

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_6_end_x
            U_2_2_Us_end_dy=U_6_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_6_end_x+U_2_end_x
            U_S_m_end_y=U_6_end_y+U_2_end_y

            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        case 3:#Sector 3 N 5
            ####Sector 2-3 ####
            T_1_temp = T_x
            T_2_temp = -T_y
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
            U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_3_end_x
            U_2_2_Us_end_dy=U_3_end_y

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_2_end_x
            U_3_2_Us_end_dy=U_2_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_2_end_x+U_3_end_x
            U_S_m_end_y=U_2_end_y+U_3_end_y

            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            # U_c_phase
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 4:#Sector 4 N 4
            ####Sector 3-1 ####
            T_1_temp = T_z
            T_2_temp = -T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
            U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_1_end_x
            U_3_2_Us_end_dy=U_1_end_y

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_3_end_x
            U_1_2_Us_end_dy=U_3_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_3_end_x+U_1_end_x
            U_S_m_end_y=U_3_end_y+U_1_end_y
            
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 5:#Sector 5 N 6
            ####Sector 1-5 ####
            T_1_temp = -T_y
            T_2_temp = -T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_5_end_x
            U_1_2_Us_end_dy=U_5_end_y

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_1_end_x
            U_5_2_Us_end_dy=U_1_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_1_end_x+U_5_end_x
            U_S_m_end_y=U_1_end_y+U_5_end_y
            
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        
        case 6:#Sector 6 N 2
            ####Sector 5-4 ####
            T_1_temp =-T_x 
            T_2_temp = T_y
            if (T_1_temp+T_2_temp)>=Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
            U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_4_end_x
            U_5_2_Us_end_dy=U_4_end_y

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_5_end_x
            U_4_2_Us_end_dy=U_5_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_5_end_x+U_4_end_x
            U_S_m_end_y=U_5_end_y+U_4_end_y

            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear    
    return line_l,theta_text,U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m #line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point
    # return line_l,#U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m#line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,init_func=init,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)  #,init_func=init





# ax_u_l.grid()
plt.show()
```


```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
# Necessary Parameters for angular Motion
fig, ax_u_l = plt.subplots(
    ncols=1,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(8, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
# ax=fig.subplots()
# ax.set_xlim=(-2.5,2.5)
# ax.set_ylim=(-2.5,2.5)
##########Annoate theta#####################################
theta_template = 'theta = %.0fdeg'
theta_text = ax_u_l.text(0.05, 0.9, '', transform=ax_u_l.transAxes, fontsize = 14)  
theta_text.set_text(theta_template % (0))#'theta = %.0fs'
theta_text.set_text('theta = %.0fdeg')

#######Draw a Circle#######################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.plot(2/3*theta_1_x,2/3*theta_1_y)
ax_u_l.plot(2/3*(np.sqrt(3)/2)*theta_1_x,2/3*(np.sqrt(3)/2)*theta_1_y)
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
###Draw a Hexagon ############
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)

ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot(2/3*theta_x, 2/3*theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))


line, = ax_u_l.plot([0], [0],'k--')

origin, = ax_u_l.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_S_m          = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))

# theObject, = ax_u_l.plot([1], [1], marker = 'o', markersize = 1000, markerfacecolor = 'b')

# x = np.linspace(0, 2 * np.pi, 50)
# U_A=U_m*np.cos(x)
# U_B=U_m*np.cos(x-2/3*np.pi)
# U_C=U_m*np.cos(x+2/3*np.pi)
# U_SVPWM=np.cos(x)
# U_alpha=U_A
# U_beta=U_m*np.sin(x)
# U_A,= ax_u_r.plot(x, U_A)
# U_B,= ax_u_r.plot(x, U_B)
# U_C,= ax_u_r.plot(x, U_C)
# U_SVPWM,=ax_u_r.plot(x, U_SVPWM)
# ax_u_r.grid('both')
# sine, cos= ax_u_r.plot(x, np.sin(x), np.cos(x))

def init():
    # line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    # U_A.set_data([], [])
    # U_B.set_data([], [])
    # U_C.set_data([], [])
    # U_alpha.set_data([], [])
    # U_beta.set_data([], [])
    # U_SVPWM.set_data([], [])

    # theObject.set_data([], [])
    theta_text.set_text('')
    # theta_text.set_text(theta_template % (0))
    return theta_text,#theObject#U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    theta_deg = frames
    theta_radian=math.radians(theta_deg)
    U_alpha=np.cos(theta_radian)
    U_beta=np.sin(theta_radian)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_alpha
    line_l_end_y=U_beta
    theta_text.set_text(theta_template % (theta_deg))
    #########Calculate N from U_alpha U_beta#####################################
    U_ref1=U_beta
    U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
    U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
    if U_ref1>0:
        A = 1
    else :
        A = 0
    if U_ref2>0:
        B = 1
    else :
        B = 0
    if U_ref3>0:
        C = 1
    else :
        C = 0
    N=4*C+2*B+A
    print("N = ",N)
    T_x = np.sqrt(3)*Ts*U_beta/U_dc
    T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    # sector=math.ceil(theta_radian/(1/3*np.pi))# up 
    sector=int(theta_radian/(1/3*np.pi)+1)# up 
    print("sector = ",sector)
    print("deg = ",theta_deg)
    match sector:
        case 1:#Sector 1 N 3
            ####Sector 4-6 ####
            T_1_temp=-T_z
            T_2_temp=T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
            U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_6_end_x
            U_4_2_Us_end_dy=U_6_end_y

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_4_end_x
            U_6_2_Us_end_dy=U_4_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_4_end_x+U_6_end_x
            U_S_m_end_y=U_4_end_y+U_6_end_y

            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("U_4 = ",T_1*2/3*U_dc)
        case 2:#Sector 2 N 1
            ####Sector 6-2 ####
            T_1_temp = T_y
            T_2_temp = T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_2_end_x
            U_6_2_Us_end_dy=U_2_end_y

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_6_end_x
            U_2_2_Us_end_dy=U_6_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_6_end_x+U_2_end_x
            U_S_m_end_y=U_6_end_y+U_2_end_y

            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        case 3:#Sector 3 N 5
            ####Sector 2-3 ####
            T_1_temp = T_x
            T_2_temp = -T_y
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
            U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_3_end_x
            U_2_2_Us_end_dy=U_3_end_y

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_2_end_x
            U_3_2_Us_end_dy=U_2_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_2_end_x+U_3_end_x
            U_S_m_end_y=U_2_end_y+U_3_end_y

            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            # U_c_phase
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 4:#Sector 4 N 4
            ####Sector 3-1 ####
            T_1_temp = T_z
            T_2_temp = -T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
            U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_1_end_x
            U_3_2_Us_end_dy=U_1_end_y

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_3_end_x
            U_1_2_Us_end_dy=U_3_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_3_end_x+U_1_end_x
            U_S_m_end_y=U_3_end_y+U_1_end_y
            
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)

        case 5:#Sector 5 N 6
            ####Sector 1-5 ####
            T_1_temp = -T_y
            T_2_temp = -T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_5_end_x
            U_1_2_Us_end_dy=U_5_end_y

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_1_end_x
            U_5_2_Us_end_dy=U_1_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_1_end_x+U_5_end_x
            U_S_m_end_y=U_1_end_y+U_5_end_y
            
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
        
        case 6:#Sector 6 N 2
            ####Sector 5-4 ####
            T_1_temp =-T_x 
            T_2_temp = T_y
            if (T_1_temp+T_2_temp)>=Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
            U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_4_end_x
            U_5_2_Us_end_dy=U_4_end_y

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_5_end_x
            U_4_2_Us_end_dy=U_5_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_5_end_x+U_4_end_x
            U_S_m_end_y=U_5_end_y+U_4_end_y

            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear    
    return line_l,theta_text,U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m #line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point
    # return line_l,#U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m#line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,init_func=init,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)  #,init_func=init





# ax_u_l.grid()
plt.show()
```

    N =  2
    sector =  1
    deg =  0
    T_1 =  5e-05
    T_2 =  0.0
    T_0 =  0.0
    U_4 =  3.3333333333333335e-05
    N =  3
    sector =  1
    deg =  1
    T_1 =  4.9002286005287666e-05
    T_2 =  9.97713994712331e-07
    T_0 =  5.505714157152952e-21
    U_4 =  3.266819067019178e-05
    N =  3
    sector =  1
    deg =  2
    T_1 =  4.802369376253133e-05
    T_2 =  1.976306237468674e-06
    T_0 =  8.470329472543003e-22
    U_4 =  3.201579584168755e-05
    N =  3
    sector =  1
    deg =  3
    T_1 =  4.706309915684302e-05
    T_2 =  2.9369008431569853e-06
    T_0 =  -4.235164736271502e-21
    U_4 =  3.137539943789535e-05
    N =  3
    sector =  1
    deg =  4
    T_1 =  4.611944059757898e-05
    T_2 =  3.88055940242102e-06
    T_0 =  2.541098841762901e-21
    U_4 =  3.074629373171932e-05
    N =  3
    sector =  1
    deg =  5
    T_1 =  4.5191713897072935e-05
    T_2 =  4.808286102927068e-06
    T_0 =  -8.470329472543003e-22
    U_4 =  3.012780926471529e-05
    N =  3
    sector =  1
    deg =  6
    T_1 =  4.4278967598536984e-05
    T_2 =  5.7210324014630094e-06
    T_0 =  8.470329472543003e-21
    U_4 =  2.951931173235799e-05
    N =  3
    sector =  1
    deg =  7
    T_1 =  4.338029870521242e-05
    T_2 =  6.619701294787583e-06
    T_0 =  -2.541098841762901e-21
    U_4 =  2.892019913680828e-05
    N =  3
    sector =  1
    deg =  8
    T_1 =  4.2494848768419734e-05
    T_2 =  7.505151231580276e-06
    T_0 =  -8.470329472543003e-21
    U_4 =  2.832989917894649e-05
    N =  3
    sector =  1
    deg =  9
    T_1 =  4.16218002969935e-05
    T_2 =  8.378199703006507e-06
    T_0 =  -1.6940658945086007e-21
    U_4 =  2.774786686466233e-05
    N =  3
    sector =  1
    deg =  10
    T_1 =  4.0760373454795235e-05
    T_2 =  9.239626545204769e-06
    T_0 =  -1.6940658945086007e-21
    U_4 =  2.7173582303196823e-05
    


```python
np.arange(0, 360, 1)
```




    array([  0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,
            13,  14,  15,  16,  17,  18,  19,  20,  21,  22,  23,  24,  25,
            26,  27,  28,  29,  30,  31,  32,  33,  34,  35,  36,  37,  38,
            39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,
            52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,
            65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,
            78,  79,  80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,
            91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103,
           104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
           117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
           130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142,
           143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155,
           156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168,
           169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181,
           182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194,
           195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207,
           208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220,
           221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233,
           234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246,
           247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259,
           260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272,
           273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
           286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298,
           299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311,
           312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324,
           325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337,
           338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350,
           351, 352, 353, 354, 355, 356, 357, 358, 359])




```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import math
# from IPython.display import HTML
import matplotlib
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first
############# Pre defination parameter#################################
freq=20e3
Ts=1/freq
U_dc=1
U_m=2/3*U_dc
#####################################################################
# Necessary Parameters for angular Motion
fig, (ax_u_l, ax_u_r)= plt.subplots(
    nrows=1,
    ncols=2,
    # sharey=True,
    # figsize=(6, 2),
    figsize=(16, 8),
    # gridspec_kw=dict(width_ratios=[1, 3], wspace=0),
)
###### ax_u_l setting #########################################
ax_u_l.axis('equal')
ax_u_l.set_xlim(-U_dc*1.2,U_dc*1.2)
ax_u_l.set_ylim(-U_dc*1.2,U_dc*1.2)
ax_u_l.grid()
###############################################################

###### ax_u_r setting #########################################
ax_u_r.set_xlim(0,360)
ax_u_r.set_ylim(-U_dc*1.2,U_dc*1.2)
ax_u_r.grid()
################################################################

##########Annoate theta#########################################
theta_template = 'theta = %.0fdeg'
theta_text = ax_u_l.text(0.05, 0.9, '', transform=ax_u_l.transAxes, fontsize = 14)  
theta_text.set_text(theta_template % (0))#'theta = %.0fs'
theta_text.set_text('theta = %.0fdeg')
################################################################

#######Draw a Circle############################################
theta_1=np.linspace(0,2*np.pi,100)
theta_1_x=U_dc*np.cos(theta_1)
theta_1_y=U_dc*np.sin(theta_1)
ax_u_l.plot(theta_1_x,theta_1_y)
ax_u_l.plot(2/3*theta_1_x,2/3*theta_1_y)
ax_u_l.plot(2/3*(np.sqrt(3)/2)*theta_1_x,2/3*(np.sqrt(3)/2)*theta_1_y)
#################################################################

###Draw a Hexagon ##############################################################################
theta=np.linspace(0,2*np.pi,7)
# theta_len=np.size(theta)
theta_x=U_dc*np.cos(theta)
theta_y=U_dc*np.sin(theta)

ax_u_l.plot(theta_x, theta_y)#, color='r'
ax_u_l.plot(2/3*theta_x, 2/3*theta_y)#, color='r'
ax_u_l.plot([0,theta_x[0]],[0, theta_y[0]])#[0,0],, color='r'
ax_u_l.annotate('0[100]4', xy=(theta_x[0], theta_y[0]), xytext=(theta_x[0], theta_y[0]))
            # arrowprops=dict(facecolor='black', shrink=0.05),
ax_u_l.plot([0,theta_x[1]],[0, theta_y[1]])#[0,0],, color='r'
ax_u_l.annotate('$\pi/3$[110]6', xy=(theta_x[1], theta_y[1]), xytext=(theta_x[1], theta_y[1]))

ax_u_l.plot([0,theta_x[2]],[0, theta_y[2]])#[0,0],, color='r'
ax_u_l.annotate('$2\pi/3$[010]2', xy=(theta_x[2], theta_y[2]), xytext=(theta_x[2], theta_y[2]))

ax_u_l.plot([0,theta_x[3]],[0, theta_y[3]])#[0,0],, color='r'
ax_u_l.annotate('$\pi$[011]3', xy=(theta_x[3], theta_y[3]), xytext=(theta_x[3], theta_y[3]))

ax_u_l.plot([0,theta_x[4]],[0, theta_y[4]])#[0,0],, color='r'
ax_u_l.annotate('$4\pi/3$[001]1', xy=(theta_x[4], theta_y[4]), xytext=(theta_x[4], theta_y[4]))

ax_u_l.plot([0,theta_x[5]],[0, theta_y[5]])#[0,0],, color='r'
ax_u_l.annotate('$5\pi/3$[101]5', xy=(theta_x[5], theta_y[5]), xytext=(theta_x[5], theta_y[5]))
####################################################################################################

########### ax_u_l plot #########################################################################################
line, = ax_u_l.plot([0], [0],'k--')

origin, = ax_u_l.plot([0], [0], marker='o', markersize = 6, markerfacecolor = 'b')
U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
U_S_m          = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
##########################################################################################################

########### ax_u_r plot #########################################################################################
x_deg=np.arange(0, 360, 1),
x_radian = np.deg2rad(x_deg)
vl = ax_u_r.axvline(0, ls='-', color='r', lw=1, zorder=10)
line, = ax_u_r.plot([],[], lw=2)
U_A,  = ax_u_r.plot([],[], lw=2)
U_B,  = ax_u_r.plot([],[], lw=2)
U_C,  = ax_u_r.plot([],[], lw=2)

##########################################################################################################


def init():
    # line_l.set_data([],[],[] ,[])
    # line_m.set_data([],[],[] ,[]) 

    # theObject.set_data([], [])
    # time_text.set_text('')
    # U_A.set_data([], [])
    # U_B.set_data([], [])
    # U_C.set_data([], [])
    # U_alpha.set_data([], [])
    # U_beta.set_data([], [])
    # U_SVPWM.set_data([], [])

    # theObject.set_data([], [])
    theta_text.set_text('')
    vl.set_xdata([])

    # theta_text.set_text(theta_template % (0))
    return theta_text,vl#theObject#U_A, U_B, U_C, U_SVPWM,U_alpha,U_beta,

def animate(frames):
    # pos = np.cos(i), np.sin(i)
    # x = np.linspace(0, i, int(i * 10000 / np.pi))
    theta_deg = frames
    theta_radian=math.radians(theta_deg)
    U_alpha=np.cos(theta_radian)
    U_beta=np.sin(theta_radian)
    line_l_start_x=0
    line_l_start_y=0
    line_l_end_x=U_alpha
    line_l_end_y=U_beta
    theta_text.set_text(theta_template % (theta_deg))
    
    #########Calculate N from U_alpha U_beta#####################################
    U_ref1=U_beta
    U_ref2=np.sqrt(3)/2*U_alpha-1/2*U_beta
    U_ref3=-np.sqrt(3)/2*U_alpha-1/2*U_beta
    if U_ref1>0:
        A = 1
    else :
        A = 0
    if U_ref2>0:
        B = 1
    else :
        B = 0
    if U_ref3>0:
        C = 1
    else :
        C = 0
    N=4*C+2*B+A
    print("N = ",N)
    T_x = np.sqrt(3)*Ts*U_beta/U_dc
    T_y = np.sqrt(3)*Ts*(np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    T_z = np.sqrt(3)*Ts*(-np.sqrt(3)/2*U_alpha+1/2*U_beta)/U_dc
    print("T_x = ",T_x)
    print("T_y = ",T_y)
    print("T_z+T_z = ",T_z)
    # sector=math.ceil(theta_radian/(1/3*np.pi))# up 
    sector=int(theta_radian/(1/3*np.pi)+1)# up 
    print("sector = ",sector)
    print("deg = ",theta_deg)
    match sector:
        case 1:#Sector 1 N 3
            ####Sector 4-6 ####
            T_1_temp=-T_z
            T_2_temp=T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_1/Ts*2/3*U_dc*np.cos(0)
            U_4_end_y=T_1/Ts*2/3*U_dc*np.sin(0)
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_2/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_2/Ts*2/3*U_dc*np.sin(1/3*np.pi)

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_6_end_x
            U_4_2_Us_end_dy=U_6_end_y

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_4_end_x
            U_6_2_Us_end_dy=U_4_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_4_end_x+U_6_end_x
            U_S_m_end_y=U_4_end_y+U_6_end_y

            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)
        case 2:#Sector 2 N 1
            ####Sector 6-2 ####
            T_1_temp = T_y
            T_2_temp = T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_6_start_x=0
            U_6_start_y=0
            U_6_end_x=T_1/Ts*2/3*U_dc*np.cos(1/3*np.pi)
            U_6_end_y=T_1/Ts*2/3*U_dc*np.sin(1/3*np.pi)
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_2/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_2/Ts*2/3*U_dc*np.sin(2/3*np.pi)

            U_6_2_Us_start_x=U_6_end_x
            U_6_2_Us_start_y=U_6_end_y
            U_6_2_Us_end_dx=U_2_end_x
            U_6_2_Us_end_dy=U_2_end_y

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_6_end_x
            U_2_2_Us_end_dy=U_6_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_6_end_x+U_2_end_x
            U_S_m_end_y=U_6_end_y+U_2_end_y

            # U_6      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_6_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_6_start_x,U_6_start_y,U_6_end_x,U_6_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_6_2_Us_start_x,U_6_2_Us_start_y,U_6_2_Us_end_dx,U_6_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)
        case 3:#Sector 3 N 5
            ####Sector 2-3 ####
            T_1_temp = T_x
            T_2_temp = -T_y
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_2_start_x=0
            U_2_start_y=0
            U_2_end_x=T_1/Ts*2/3*U_dc*np.cos(2/3*np.pi)
            U_2_end_y=T_1/Ts*2/3*U_dc*np.sin(2/3*np.pi)
            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_2/Ts*2/3*U_dc*np.cos(np.pi)
            U_3_end_y=T_2/Ts*2/3*U_dc*np.sin(np.pi)

            U_2_2_Us_start_x=U_2_end_x
            U_2_2_Us_start_y=U_2_end_y
            U_2_2_Us_end_dx=U_3_end_x
            U_2_2_Us_end_dy=U_3_end_y

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_2_end_x
            U_3_2_Us_end_dy=U_2_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_2_end_x+U_3_end_x
            U_S_m_end_y=U_2_end_y+U_3_end_y

            # U_2      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_2_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            # U_c_phase
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_2_start_x,U_2_start_y,U_2_end_x,U_2_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_2_2_Us_start_x,U_2_2_Us_start_y,U_2_2_Us_end_dx,U_2_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)

            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)


        case 4:#Sector 4 N 4
            ####Sector 3-1 ####
            T_1_temp = T_z
            T_2_temp = -T_x
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_3_start_x=0
            U_3_start_y=0
            U_3_end_x=T_1/Ts*2/3*U_dc*np.cos(3/3*np.pi)
            U_3_end_y=T_1/Ts*2/3*U_dc*np.sin(3/3*np.pi)
            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_2/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_2/Ts*2/3*U_dc*np.sin(4/3*np.pi)

            U_3_2_Us_start_x=U_3_end_x
            U_3_2_Us_start_y=U_3_end_y
            U_3_2_Us_end_dx=U_1_end_x
            U_3_2_Us_end_dy=U_1_end_y

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_3_end_x
            U_1_2_Us_end_dy=U_3_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_3_end_x+U_1_end_x
            U_S_m_end_y=U_3_end_y+U_1_end_y
            
            # U_3      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_3_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_3_start_x,U_3_start_y,U_3_end_x,U_3_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_3_2_Us_start_x,U_3_2_Us_start_y,U_3_2_Us_end_dx,U_3_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)

        case 5:#Sector 5 N 6
            ####Sector 1-5 ####
            T_1_temp = -T_y
            T_2_temp = -T_z
            if (T_1_temp+T_2_temp)>Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2

            U_1_start_x=0
            U_1_start_y=0
            U_1_end_x=T_1/Ts*2/3*U_dc*np.cos(4/3*np.pi)
            U_1_end_y=T_1/Ts*2/3*U_dc*np.sin(4/3*np.pi)
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_2/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_2/Ts*2/3*U_dc*np.sin(5/3*np.pi)

            U_1_2_Us_start_x=U_1_end_x
            U_1_2_Us_start_y=U_1_end_y
            U_1_2_Us_end_dx=U_5_end_x
            U_1_2_Us_end_dy=U_5_end_y

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_1_end_x
            U_5_2_Us_end_dy=U_1_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_1_end_x+U_5_end_x
            U_S_m_end_y=U_1_end_y+U_5_end_y
            
            # U_1      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_1_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow(U_1_start_x,U_1_start_y,U_1_end_x,U_1_end_y, width = 0.05, color = 'b'))
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_1_2_Us_start_x,U_1_2_Us_start_y,U_1_2_Us_end_dx,U_1_2_Us_end_dy, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))

            U_a_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)
        
        case 6:#Sector 6 N 2
            ####Sector 5-4 ####
            T_1_temp =-T_x 
            T_2_temp = T_y
            if (T_1_temp+T_2_temp)>=Ts:
                T_1 = T_1_temp/(T_1_temp+T_2_temp)*Ts
                T_2 = T_2_temp/(T_1_temp+T_2_temp)*Ts
            else :
                T_1 = T_1_temp
                T_2 = T_2_temp
            T_0 = Ts-T_1-T_2
            U_5_start_x=0
            U_5_start_y=0
            U_5_end_x=T_1/Ts*2/3*U_dc*np.cos(5/3*np.pi)
            U_5_end_y=T_1/Ts*2/3*U_dc*np.sin(5/3*np.pi)
            U_4_start_x=0
            U_4_start_y=0
            U_4_end_x=T_2/Ts*2/3*U_dc*np.cos(6/3*np.pi)
            U_4_end_y=T_2/Ts*2/3*U_dc*np.sin(6/3*np.pi)

            U_5_2_Us_start_x=U_5_end_x
            U_5_2_Us_start_y=U_5_end_y
            U_5_2_Us_end_dx=U_4_end_x
            U_5_2_Us_end_dy=U_4_end_y

            U_4_2_Us_start_x=U_4_end_x
            U_4_2_Us_start_y=U_4_end_y
            U_4_2_Us_end_dx=U_5_end_x
            U_4_2_Us_end_dy=U_5_end_y

            U_S_m_start_x=0
            U_S_m_start_y=0
            U_S_m_end_x=U_5_end_x+U_4_end_x
            U_S_m_end_y=U_5_end_y+U_4_end_y

            # U_5      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            # U_4      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            # U_5_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_4_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            # U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_b_phase      = ax_u_l.add_patch(plt.Arrow(U_5_start_x,U_5_start_y,U_5_end_x,U_5_end_y, width = 0.05, color = 'b'))
            U_a_phase      = ax_u_l.add_patch(plt.Arrow(U_4_start_x,U_4_start_y,U_4_end_x,U_4_end_y, width = 0.05, color = 'b'))
            U_b_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_5_2_Us_start_x,U_5_2_Us_start_y,U_5_2_Us_end_dx,U_5_2_Us_end_dy, width = 0.05, color = 'b'))
            U_a_phase_2_Us = ax_u_l.add_patch(plt.Arrow(U_4_2_Us_start_x,U_4_2_Us_start_y,U_4_2_Us_end_dx,U_4_2_Us_end_dy, width = 0.05, color = 'b'))
            U_S_m    = ax_u_l.add_patch(plt.Arrow(U_S_m_start_x,U_S_m_start_y,U_S_m_end_x,U_S_m_end_y, width = 0.05, color = 'b'))
            
            U_c_phase      = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            U_c_phase_2_Us = ax_u_l.add_patch(plt.Arrow([0],[0],[0],[0], width = 0.05, color = 'b'))
            
            print("T_1_temp = ",T_1_temp)
            print("T_2_temp = ",T_2_temp)
            print("T_1_temp+T_2_temp = ",T_1_temp+T_2_temp)
            print("T_1 = ",T_1)
            print("T_2 = ",T_2)
            print("T_0 = ",T_0)
            print("T_1+T_2 = ",T_1+T_2)
    ## plot Us and U_A U_B U_C
    line_l          = ax_u_l.add_patch(plt.Arrow(line_l_start_x,line_l_start_y,line_l_end_x,line_l_end_y, width = 0.1))#, color = 'r'# works good except the arror cannot disapear    
    
    line.set_data(x_deg,np.cos( x_radian-theta_radian ))  #+1/2*np.pi/ 150 update the data.
    # U_A.set_data(x,2/3*np.cos( i_rad-2/3*np.pi))  #+1/2*np.pi/ 150 update the data.
    U_A.set_data(x_deg,2/3*np.cos( theta_radian)*np.cos(x_radian))  #+1/2*np.pi/ 150 update the data.
    U_B.set_data(x_deg,2/3*np.cos( theta_radian-2/3*np.pi)*np.cos(x_radian))  #+1/2*np.pi/ 150 update the data.
    U_C.set_data(x_deg,2/3*np.cos( theta_radian+2/3*np.pi)*np.cos(x_radian))  #+1/2*np.pi/ 150 update the data.
    # vl.set_xdata([np.rad2deg(theta_radian),np.rad2deg(theta_radian)])
    vl.set_xdata(np.rad2deg(theta_radian))

    # vl.set_xdata([theta_radian,theta_radian])

    return line_l,theta_text,U_a_phase,U_b_phase,U_c_phase,\
            U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m,\
            U_A,U_B, U_C,line,vl
            #line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point
    # return line_l,#U_a_phase,U_b_phase,U_c_phase,U_b_phase_2_Us,U_a_phase_2_Us,U_c_phase_2_Us,U_S_m#line_l_U_A,line_l_U_B,line_l_U_C,line_l_U_A_2_U_B,line_l_U_B_2_U_C,U_alpha_axes,U_beta_axes,U_d_axes,U_q_axes#,U_A, U_B, U_C, U_SVPWM,line_m, con#point


ani = animation.FuncAnimation(fig,animate,init_func=init,interval=100,   blit=True,  # blitting can't be used with Figure artists
                            frames=np.arange(0, 360, 1),
                            repeat_delay=0)  #,init_func=init





plt.show()
```

    N =  2
    T_x =  0.0
    T_y =  7.5e-05
    T_z+T_z =  -7.5e-05
    sector =  1
    deg =  0
    T_1_temp =  7.5e-05
    T_2_temp =  0.0
    T_1_temp+T_2_temp =  7.5e-05
    T_1 =  5e-05
    T_2 =  0.0
    T_0 =  0.0
    T_1+T_2 =  5e-05
    N =  3
    T_x =  1.511422733185859e-06
    T_y =  7.574428850332226e-05
    T_z+T_z =  -7.423286577013641e-05
    sector =  1
    deg =  1
    T_1_temp =  7.423286577013641e-05
    T_2_temp =  1.511422733185859e-06
    T_1_temp+T_2_temp =  7.574428850332228e-05
    T_1 =  4.9002286005287666e-05
    T_2 =  9.97713994712331e-07
    T_0 =  5.505714157152952e-21
    T_1+T_2 =  4.9999999999999996e-05
    N =  3
    T_x =  3.0223850723657087e-06
    T_y =  7.646550456261503e-05
    T_z+T_z =  -7.344311949024933e-05
    sector =  1
    deg =  2
    T_1_temp =  7.344311949024933e-05
    T_2_temp =  3.0223850723657087e-06
    T_1_temp+T_2_temp =  7.646550456261503e-05
    T_1 =  4.802369376253133e-05
    T_2 =  1.976306237468674e-06
    T_0 =  8.470329472543003e-22
    T_1+T_2 =  5e-05
    N =  3
    T_x =  4.532426763774014e-06
    T_y =  7.716342848848003e-05
    T_z+T_z =  -7.263100172470602e-05
    sector =  1
    deg =  3
    T_1_temp =  7.263100172470602e-05
    T_2_temp =  4.532426763774014e-06
    T_1_temp+T_2_temp =  7.716342848848003e-05
    T_1 =  4.706309915684302e-05
    T_2 =  2.9369008431569853e-06
    T_0 =  -4.235164736271502e-21
    T_1+T_2 =  5.000000000000001e-05
    N =  3
    T_x =  6.041087834083471e-06
    T_y =  7.783784768652854e-05
    T_z+T_z =  -7.179675985244507e-05
    sector =  1
    deg =  4
    T_1_temp =  7.179675985244507e-05
    T_2_temp =  6.041087834083471e-06
    T_1_temp+T_2_temp =  7.783784768652855e-05
    T_1 =  4.611944059757898e-05
    T_2 =  3.88055940242102e-06
    T_0 =  2.541098841762901e-21
    T_1+T_2 =  5e-05
    N =  3
    T_x =  7.5479087305173325e-06
    T_y =  7.848855672213958e-05
    T_z+T_z =  -7.094064799162224e-05
    sector =  1
    deg =  5
    T_1_temp =  7.094064799162224e-05
    T_2_temp =  7.5479087305173325e-06
    T_1_temp+T_2_temp =  7.848855672213958e-05
    T_1 =  4.5191713897072935e-05
    T_2 =  4.808286102927068e-06
    T_0 =  -8.470329472543003e-22
    T_1+T_2 =  5e-05
    N =  3
    T_x =  9.052430460833645e-06
    T_y =  7.911535738303733e-05
    T_z+T_z =  -7.006292692220367e-05
    sector =  1
    deg =  6
    T_1_temp =  7.006292692220367e-05
    T_2_temp =  9.052430460833645e-06
    T_1_temp+T_2_temp =  7.911535738303733e-05
    T_1 =  4.4278967598536984e-05
    T_2 =  5.7210324014630094e-06
    T_0 =  8.470329472543003e-21
    T_1+T_2 =  4.9999999999999996e-05
    N =  3
    T_x =  1.0554194733138725e-05
    T_y =  7.971805873966851e-05
    T_z+T_z =  -6.916386400652979e-05
    sector =  1
    deg =  7
    T_1_temp =  6.916386400652979e-05
    T_2_temp =  1.0554194733138725e-05
    T_1_temp+T_2_temp =  7.971805873966851e-05
    T_1 =  4.338029870521242e-05
    T_2 =  6.619701294787583e-06
    T_0 =  -2.541098841762901e-21
    T_1+T_2 =  5e-05
    N =  3
    T_x =  1.2052744095487311e-05
    T_y =  8.029647720336143e-05
    T_z+T_z =  -6.824373310787412e-05
    sector =  1
    deg =  8
    T_1_temp =  6.824373310787412e-05
    T_2_temp =  1.2052744095487311e-05
    T_1_temp+T_2_temp =  8.029647720336143e-05
    T_1 =  4.2494848768419734e-05
    T_2 =  7.505151231580276e-06
    T_0 =  -8.470329472543003e-21
    T_1+T_2 =  5.000000000000001e-05
    N =  3
    T_x =  1.3547622075226859e-05
    T_y =  8.085043658224876e-05
    T_z+T_z =  -6.730281450702189e-05
    sector =  1
    deg =  9
    T_1_temp =  6.730281450702189e-05
    T_2_temp =  1.3547622075226859e-05
    T_1_temp+T_2_temp =  8.085043658224875e-05
    T_1 =  4.16218002969935e-05
    T_2 =  8.378199703006507e-06
    T_0 =  -1.6940658945086007e-21
    T_1+T_2 =  5e-05
    N =  3
    T_x =  1.5038373318043529e-05
    T_y =  8.137976813493737e-05
    T_z+T_z =  -6.634139481689384e-05
    sector =  1
    deg =  10
    T_1_temp =  6.634139481689384e-05
    T_2_temp =  1.5038373318043529e-05
    T_1_temp+T_2_temp =  8.137976813493737e-05
    T_1 =  4.0760373454795235e-05
    T_2 =  9.239626545204769e-06
    T_0 =  -1.6940658945086007e-21
    T_1+T_2 =  5e-05
    N =  3
    T_x =  1.652454372666753e-05
    T_y =  8.188431062190856e-05
    T_z+T_z =  -6.535976689524102e-05
    sector =  1
    deg =  11
    T_1_temp =  6.535976689524102e-05
    T_2_temp =  1.652454372666753e-05
    T_1_temp+T_2_temp =  8.188431062190854e-05
    T_1 =  3.9909823016665724e-05
    T_2 =  1.0090176983334284e-05
    T_0 =  -5.082197683525802e-21
    T_1+T_2 =  5.000000000000001e-05
    N =  3
    T_x =  1.800568059919554e-05
    T_y =  8.23639103546332e-05
    T_z+T_z =  -6.435822975543765e-05
    sector =  1
    deg =  12
    T_1_temp =  6.435822975543765e-05
    T_2_temp =  1.800568059919554e-05
    T_1_temp+T_2_temp =  8.236391035463319e-05
    T_1 =  3.9069435556380996e-05
    T_2 =  1.093056444361901e-05
    T_0 =  -3.3881317890172014e-21
    T_1+T_2 =  5.000000000000001e-05
    
