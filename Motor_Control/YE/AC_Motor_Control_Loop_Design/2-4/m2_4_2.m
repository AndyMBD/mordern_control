wsc=100; J=0.00016; 
s = tf('s');
Kp_w=J*wsc; Ki_w=Kp_w*wsc/5; 
tf_pi = tf([Kp_w Ki_w],[1 0]);
tf_pc = tf([1000], [1 1000]);
tf_plant = tf([1], [J 0]);
Gw_open = tf_pi*tf_pc*tf_plant;
Gw_close = Gw_open/(1+Gw_open);
Gf1 = s*J;
Gf2 = (s*J)*(2000*s+2e06)/(1000*s+2e06);
kf = 0.9;
Gw_ff1 = (kf*Gf1+tf_pi)*tf_pc*tf_plant/(1+tf_pi*tf_pc*tf_plant);
Gw_ff2 = (kf*Gf2+tf_pi)*tf_pc*tf_plant/(1+tf_pi*tf_pc*tf_plant);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(Gw_ff1,'-b',Gw_ff2,'-.b',{1,10000},h);
legend('Feed-Forward-No-Gpc', 'with Feed-Forward-With-Gpc');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;