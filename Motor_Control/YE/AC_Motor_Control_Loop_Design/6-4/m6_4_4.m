T=0.001;
alpha=0.9;
z=tf('z', T);
s=tf('s');
tf_trapezoidal_differentiator = (1+alpha)/T*(z-1)/(z+alpha);
tf_s_differentiator = s;
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_s_differentiator,'-b',tf_trapezoidal_differentiator,'-.k',{0.01,10000},h);
legend('tf-s-differentiator','tf-trapezoidal-differentiator');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;