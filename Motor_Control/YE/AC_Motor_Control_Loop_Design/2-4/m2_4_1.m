wsc=100; J=0.00016; 
s = tf('s');
Kp_w=J*wsc; Ki_w=Kp_w*wsc/5; 
tf_pi = tf([Kp_w Ki_w],[1 0]);
tf_pc = tf([1000], [1 1000]);
tf_plant = tf([1], [J 0]);
Gw_open = tf_pi*tf_pc*tf_plant;
Gw_close = Gw_open/(1+Gw_open);
Gf = s*J;
kf = 0.8    ;
Gw_ff = (kf*Gf+tf_pi)*tf_pc*tf_plant/(1+tf_pi*tf_pc*tf_plant);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(Gw_close,'-b',Gw_ff,'-.b',{1,10000},h);
legend('No Feed-Forward', 'with Feed-Forward');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;