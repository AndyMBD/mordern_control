### plot a circle with angle 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation, rc
import matplotlib.patches as patches
import matplotlib.animation as animation
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
from matplotlib.patheffects import withStroke
from matplotlib.collections import LineCollection

import matplotlib
# %matplotlib inline # don't works , but don;t show good
# %matplotlib ipympl # works inline jupyter, but don;t show good
# %matplotlib qt5 # works good outside jupyter note book restart kernal first
matplotlib.use('TkAgg') # works good outside jupyter note book restart kernal first

fig = plt.figure(figsize=(10, 10))

fig.subplots_adjust(left=0.01, right=0.99, top=0.99, bottom=0.01)
ax = fig.add_subplot(projection='polar')
theta_min=0
theta_max=360
r_min=0
r_max=10
ax.set_thetamin(theta_min)
ax.set_thetamax(theta_max)
ax.set_rlim(r_min, r_max)
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.grid(False)
scale = np.zeros((theta_max, 2, 2))
scale[:, 0, 0] = np.linspace(0, 2*np.pi, theta_max)  # 刻度线的角度值
scale[:, 0, 1] = 9.6  # 每度的刻度线起始点r值
scale[::5, 0, 1] = 9.3  # 每5度的刻度线起始点r值
scale[::10, 0, 1] = 2  # 每10度的刻度线起始点r值
scale[::90, 0, 1] = 0  # 90度的刻度线起始点r值
scale[:, 1, 0] = np.linspace(0, 2*np.pi, theta_max)
scale[:, 1, 1] = 10
# , linewidths=[1, 0.5, 0.5, 0.5, 0.5],
line_segments = LineCollection(scale, linewidths=[2, 1, 1, 1, 1],
                               color='k', linestyle='solid')
ax.add_collection(line_segments)
c = np.linspace(0, 2*np.pi, 500)
ax.plot(c, [7]*c.size, color='k', linewidth=2)
ax.plot(c, [2]*c.size, color='k', linewidth=1)

# ax.plot([0, np.deg2rad(45)], [0, 10],
#         color='k', linestyle='--', linewidth=1)
# ax.plot([0, np.deg2rad(135)], [0, 10],
#         color='k', linestyle='--', linewidth=0.5)

text_kw = dict(rotation_mode='anchor',
               va='top', ha='center', color='red', clip_on=False,
               path_effects=[withStroke(linewidth=5, foreground='white')])

for i in range(0, theta_max, 10):
    theta = np.deg2rad(i)
    if theta in [0,np.pi/3,2*np.pi/3,3*np.pi/3,4*np.pi/3,5*np.pi/3]:
        ax.text(theta, 8.7, i,rotation=i-90,weight ='bold', fontsize=18, **text_kw)
        continue
    ax.text(theta, 8.9, i, rotation=i-90,weight ='bold', fontsize=12, **text_kw)
    # ax.text(theta, 7.9, 180-i, rotation=i-90, fontsize=12, **text_kw)

plt.show()