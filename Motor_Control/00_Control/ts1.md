```python
# %matplotlib inline
# Libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
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
U_m=1/3*U_dc

theta_deg=np.arange(0, 360, 1)
theta_deg_len   =   len(theta_deg)
T_1_temp        =   np.zeros(theta_deg_len)
T_2_temp        =   np.zeros(theta_deg_len)
T_1             =   np.zeros(theta_deg_len)
T_2             =   np.zeros(theta_deg_len)
T_0             =   np.zeros(theta_deg_len)
T_a             =   np.zeros(theta_deg_len)
T_b             =   np.zeros(theta_deg_len)
T_c             =   np.zeros(theta_deg_len)
T_cm1           =   np.zeros(theta_deg_len)
T_cm2           =   np.zeros(theta_deg_len)
T_cm3           =   np.zeros(theta_deg_len)
T_1_add_T_2     =   np.zeros(theta_deg_len)
theta_radian =np.deg2rad(theta_deg) #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)
# theta_radian =41/24*np.pi #1/12*np.pi#0##2/3*np.pi #np.linspace(0, 2 * np.pi, 50)

U_alpha  =   U_m*np.cos(theta_radian)
U_beta   =   U_m*np.sin(theta_radian)
U_AN     =   U_m*np.cos(theta_radian)
U_BN     =   U_m*np.cos(theta_radian-2/3*np.pi)
U_CN     =   U_m*np.cos(theta_radian+2/3*np.pi)

K_1=np.sqrt(3)/(U_dc*freq)
sector=np.floor(theta_radian/(np.pi/3)+1)# up
T_x=K_1*U_beta
T_y=K_1*(np.sqrt(3)*U_alpha/2+U_beta/2)
T_z=K_1*(-np.sqrt(3)*U_alpha/2+U_beta/2)

# print('ok')
for theta_deg_index in theta_deg:
    match sector[theta_deg_index]:
        case 1:
            T_1_temp[theta_deg_index]=-T_z[theta_deg_index]
            T_2_temp[theta_deg_index]= T_x[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_a[theta_deg_index]
            T_cm2[theta_deg_index]=T_b[theta_deg_index]
            T_cm3[theta_deg_index]=T_c[theta_deg_index]

        case 2:
            T_1_temp[theta_deg_index]= T_z[theta_deg_index]
            T_2_temp[theta_deg_index]= T_y[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
           
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_b[theta_deg_index]
            T_cm2[theta_deg_index]=T_a[theta_deg_index]
            T_cm3[theta_deg_index]=T_c[theta_deg_index]
        case 3:
            T_1_temp[theta_deg_index]= T_x[theta_deg_index]
            T_2_temp[theta_deg_index]=-T_y[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_c[theta_deg_index]
            T_cm2[theta_deg_index]=T_a[theta_deg_index]
            T_cm3[theta_deg_index]=T_b[theta_deg_index]

        case 4:
            T_1_temp[theta_deg_index]=-T_x[theta_deg_index]
            T_2_temp[theta_deg_index]= T_z[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_c[theta_deg_index]
            T_cm2[theta_deg_index]=T_b[theta_deg_index]
            T_cm3[theta_deg_index]=T_a[theta_deg_index]
        
        case 5:
            T_1_temp[theta_deg_index]=-T_y[theta_deg_index]
            T_2_temp[theta_deg_index]=-T_z[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_b[theta_deg_index]
            T_cm2[theta_deg_index]=T_c[theta_deg_index]
            T_cm3[theta_deg_index]=T_a[theta_deg_index]

        case 6:
            T_1_temp[theta_deg_index]=  T_y[theta_deg_index]
            T_2_temp[theta_deg_index]= -T_x[theta_deg_index]
            if T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index]>1/freq:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]/(T_1_temp[theta_deg_index]+T_2_temp[theta_deg_index])
            else:
                T_1[theta_deg_index]=T_1_temp[theta_deg_index]
                T_2[theta_deg_index]=T_2_temp[theta_deg_index]
            T_0[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/2
            
            T_a[theta_deg_index]=(1/freq-T_1[theta_deg_index]-T_2[theta_deg_index])/4
            T_b[theta_deg_index]=T_a[theta_deg_index]+T_1[theta_deg_index]/2
            T_c[theta_deg_index]=T_b[theta_deg_index]+T_2[theta_deg_index]/2
            
            T_cm1[theta_deg_index]=T_a[theta_deg_index]
            T_cm2[theta_deg_index]=T_c[theta_deg_index]
            T_cm3[theta_deg_index]=T_b[theta_deg_index]
# T_1_add_T_2=T_1+T_2
# ax_u_l.plot(theta_deg,U_alpha)
# ax_u_l.plot(theta_deg,U_beta)
# ax_u_l.plot(theta_deg,U_AN)
# ax_u_l.plot(theta_deg,U_BN)
# ax_u_l.plot(theta_deg,U_CN)
# ax_u_l.plot(theta_deg,sector)
ax_u_l.plot(theta_deg,T_cm1)
ax_u_l.plot(theta_deg,T_cm2)
ax_u_l.plot(theta_deg,T_cm3)

# pandas write to Excel
# df = pd.ExcelFile()
df = pd.DataFrame({'theta_deg':theta_deg,\
                    'sector':sector,\
                    'U_AN':U_AN,\
                    'U_BN':U_BN,\
                    'U_CN':U_CN,\
                    'U_alpha':U_alpha,\
                    'U_beta':U_beta,\
                    'T_x':T_x,\
                    'T_y':T_y,\
                    'T_z':T_z,\
                    'T_1':T_1,\
                    'T_2':T_2,\
                    'T_a':T_a,\
                    'T_b':T_b,\
                    'T_c':T_c,\
                    'T_cm1':T_cm1,\
                    'T_cm2':T_cm2,\
                    'T_cm3':T_cm3,  
                  })
df = df.set_index('theta_deg')# Set index
df.plot(kind = 'scatter',x=theta_deg, y=sector ,rot=-90)

df.to_excel('./output.xlsx')# write to current folder

plt.grid()
plt.show()
```


    ---------------------------------------------------------------------------

    KeyError                                  Traceback (most recent call last)

    Cell In [4], line 204
        184 df = pd.DataFrame({'theta_deg':theta_deg,\
        185                     'sector':sector,\
        186                     'U_AN':U_AN,\
       (...)
        201                     'T_cm3':T_cm3,  
        202                   })
        203 df = df.set_index('theta_deg')# Set index
    --> 204 df.plot(kind = 'scatter',x=theta_deg, y=sector ,rot=-90)
        206 df.to_excel('./output.xlsx')# write to current folder
        208 plt.grid()
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\plotting\_core.py:945, in PlotAccessor.__call__(self, *args, **kwargs)
        943 if kind in self._dataframe_kinds:
        944     if isinstance(data, ABCDataFrame):
    --> 945         return plot_backend.plot(data, x=x, y=y, kind=kind, **kwargs)
        946     else:
        947         raise ValueError(f"plot kind {kind} can only be used for data frames")
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\plotting\_matplotlib\__init__.py:71, in plot(data, kind, **kwargs)
         69         kwargs["ax"] = getattr(ax, "left_ax", ax)
         70 plot_obj = PLOT_CLASSES[kind](data, **kwargs)
    ---> 71 plot_obj.generate()
         72 plot_obj.draw()
         73 return plot_obj.result
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\plotting\_matplotlib\core.py:452, in MPLPlot.generate(self)
        450 self._compute_plot_data()
        451 self._setup_subplots()
    --> 452 self._make_plot()
        453 self._add_table()
        454 self._make_legend()
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\plotting\_matplotlib\core.py:1260, in ScatterPlot._make_plot(self)
       1257 else:
       1258     label = None
       1259 scatter = ax.scatter(
    -> 1260     data[x].values,
       1261     data[y].values,
       1262     c=c_values,
       1263     label=label,
       1264     cmap=cmap,
       1265     norm=norm,
       1266     **self.kwds,
       1267 )
       1268 if cb:
       1269     cbar_label = c if c_is_column else ""
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\core\frame.py:3810, in DataFrame.__getitem__(self, key)
       3808     if is_iterator(key):
       3809         key = list(key)
    -> 3810     indexer = self.columns._get_indexer_strict(key, "columns")[1]
       3812 # take() does not accept boolean indexers
       3813 if getattr(indexer, "dtype", None) == bool:
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\core\indexes\base.py:6111, in Index._get_indexer_strict(self, key, axis_name)
       6108 else:
       6109     keyarr, indexer, new_indexer = self._reindex_non_unique(keyarr)
    -> 6111 self._raise_if_missing(keyarr, indexer, axis_name)
       6113 keyarr = self.take(indexer)
       6114 if isinstance(key, Index):
       6115     # GH 42790 - Preserve name from an Index
    

    File c:\Users\j4000774\AppData\Local\Programs\Python\Python310\lib\site-packages\pandas\core\indexes\base.py:6171, in Index._raise_if_missing(self, key, indexer, axis_name)
       6169     if use_interval_msg:
       6170         key = list(key)
    -> 6171     raise KeyError(f"None of [{key}] are in the [{axis_name}]")
       6173 not_found = list(ensure_index(key)[missing_mask.nonzero()[0]].unique())
       6174 raise KeyError(f"{not_found} not in index")
    

    KeyError: "None of [Int64Index([  0,   1,   2,   3,   4,   5,   6,   7,   8,   9,\n            ...\n            350, 351, 352, 353, 354, 355, 356, 357, 358, 359],\n           dtype='int64', length=360)] are in the [columns]"

