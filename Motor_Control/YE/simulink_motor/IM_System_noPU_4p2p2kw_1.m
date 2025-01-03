clear all; close all;
% 變頻器＆馬達參數 --------------------------------------------------------
% 馬達銘牌值 -------------------------------------------------------------
vdc = 300;
Pb = 2200;            % 馬達銘牌額定功率, 3kW
Ibr = 8;             % 馬達銘銘額定電流, 23A
Vbr = Pb/(3*Ibr);     % 相電壓基準值 有效值, V
poles = 4;            % 極數
Speed_rated = 1720;   % 馬達額定轉速 rpm, 1720 RPM
w_rated = Speed_rated*2*pi/60;  % 馬達額定轉速 rad/s, 0.1 rad/s
% 電氣基準值 -------------------------------------------------------------
Tb = Pb/w_rated;      % 馬達額定轉矩, Nm
wb = w_rated*poles/2; % 馬達額定電轉速, rad/s
Vb = 1.414*Vbr;       % 相電壓基準值 峰值, V
Ib = 1.414*Ibr;       % 相電流基準值 峰值, A 
zb = Vbr/Ibr;         % 基準阻抗值, ohm      
lamb = Vb/wb;         % 磁通鏈基準值, V/rad/s
Lb = lamb/Ib;         % 電感基準值, H  
% 設定的馬達參數 ---------------------------------------------------------
Rs = 2.5/3;  
Rr = 1.83/3;
Lm = 0.245/3;
Ls = 0.2557/3;
Lr = Ls;
Lsigma = Ls - Lm^2/Lr;
Sigma = 1 - Lm^2/(Ls*Lr);
D = Ls*Lr - Lm^2;
Tr = Lr/Rr;
B=0.00825;   % Friction coefficient of load and machine
J=0.013;   % Moment of inertia of load and machine
tln=0.5;         % load torque, p.u.
Omega = 0;
%-------------------------------------------------------------------------
wrm_ref = 100;  % 速度命令 rpm
% 控制器參數---------------------------------------------------------------
fc=5000;
Kpi=10;
% ASR參數----------------------
Kp=10;
Ki=2.5;
Kp_phi = 10;
Ki_phi = 7.15*10;
%------------------------------
% ACR參數----------------------
Kp_id=100;
Ki_id=100*119;
Kp_iq=100;
Ki_iq=100*119;
%------------------------------
%-------------------------------------------------------------------------
% 模擬參數初始化 ----------------------------------------------------------
theta_r = 0; theta_e = 0;
wr = 0; wrm = 0; wsl = 0; we = 0;
phi_dr_est = 0;
t = 0;
dt = 1e-3;
tfinal = 2;
if_ref = -1e-16;
Tl= 0; %0.3*Tb;   % 負載轉矩
n = 1;
x = 1;
signe = 1;
carrier = -1;
ias=0; ibs=0; ics=0; t1=0;
vax1=0; vbx1=0; vcx1=0;
vao1=0;
zia=0; zib=0; zic=0;
x1 = 0;
y = 0;
w = 0;
z = 0;
vax_o = 0;
phi_dr_ref = 0.28;
ids = 0;  iqs = 0; idse = 0; iqse = 0; idr = 0;  iqr = 0;
vqs = 0; vds = 0;
iq_err1 = 0; piq_out1 = 0;id_err1 = 0; pid_out1 = 0;
wrm_err1 = 0; pis_out1 = 0; phi_err1 = 0; piphi_out1 = 0;
phi_est1 = 0; idse1 = 0; theta_e1 = 0; we1 = 0;
ysint1 = 0; ysp = 0; piid_out = 0; piiq_out = 0; piiq_out1 = 0; piid_out1 = 0;
phidr_s = 0; phiqr_s = 0; f_mag = 0; f_angle = 0; 
% -----------------------------------------------------------------------
% 模擬回路開始 ------------------------------------------------------------
while (t < tfinal)
     wrm_ref = 200*t;
     if wrm_ref >= 100
        wrm_ref = 100;
     end

    % speed loop
    %wrm_rpm = wrm * 60 / (2 * pi); % in rpm
    wrm_err = wrm_ref - wrm; 

    pis_out = wrm_err*10.00125 - 9.99875*wrm_err1 + pis_out1;
    if pis_out >= 2*Tb;
        pis_out = 2*Tb;
    elseif pis_out <= -2*Tb;
        pis_out = -2*Tb;
    end
    wrm_err1 = wrm_err;
    pis_out1 = pis_out;
    Te_ref = pis_out;

    iq_ref = Te_ref * 4 * Lr/(3 * poles * Lm * phi_dr_ref);    % 轉矩命令當作q軸電流命令
%     % fluc estimator
%     phi_est = phi_est1*0.99286869 + 0.00029119*idse + 0.00029119*idse1;
%     phi_est1 = phi_est;
%     idse1 = idse;
    phi_est = f_mag;    
    phi_err = phi_dr_ref - phi_est;
    %x1 = x1 + Ki_phi * phi_err * dt;  % 磁通誤差積分 
    piphi_out = piphi_out1 + phi_err*10.03575 - 9.96425 * phi_err1; 
    if piphi_out > Ib*2
        piphi_out = Ib*2;
    elseif piphi_out < -Ib*2
        piphi_out = -Ib*2;
    end
    phi_err1 = phi_err;
    piphi_out1 = piphi_out;
    id_ref = piphi_out;
    % 電流回路 -------------------------------------------------
    iq_err = iq_ref - iqse;
    piiq_out = iq_err*105.95 - iq_err1*94.05 + piiq_out1; 
%     if piiq_out >= 150/(Sigma*Ls)
%         piiq_out = 150/(Sigma*Ls);
%     elseif piiq_out <= -150/(Sigma*Ls)
%         piiq_out = -150/(Sigma*Ls);
%     end
    piq_out = iq_err*105.95 - iq_err1*94.05 + piq_out1;
    iq_err1 = iq_err;
    piiq_out1 = piiq_out;
    Vq_ref = piiq_out;  % q軸電流PI輸出q軸電壓命令
    Vq_ref = Sigma*Ls*(Vq_ref + we*idse + (1-Sigma)/(Sigma*Lm)*we*phi_dr_est);

    id_err = id_ref - idse;
    piid_out = id_err*105.95 - id_err1*94.05 + piid_out1;
%     if piid_out >= 150/(Sigma*Ls)
%         piid_out = 150/(Sigma*Ls);
%     elseif piid_out <= -150/(Sigma*Ls)
%         piid_out = -150/(Sigma*Ls);
%     end
    id_err1 = id_err;
    piid_out1 = piid_out;
    Vd_ref = piid_out;  % d軸電流PI輸出d軸電壓命令
    Vd_ref = Sigma*Ls*(Vd_ref - we*iqse - (1-Sigma)/(Sigma*Tr*Lm)*phi_dr_est);
    %----------------------------------------------------------
    % 產生三相靜止座標電壓命令
    Vas_ref = Vd_ref*cos(theta_e) - Vq_ref*sin(theta_e);
    Vbs_ref = Vd_ref*cos(2*pi/3 - theta_e) + Vq_ref*sin(2*pi/3 - theta_e);
    Vcs_ref = Vd_ref*cos(4*pi/3 - theta_e) + Vq_ref*sin(4*pi/3 - theta_e);
%     %SVPWM 變頻器-------------------------------------------------
%     % calculate control voltages to be applied to PWM controller
%     if Vas_ref > 150 %相電壓最大值不超過vdc/2
%         Vas_ref = 150;
%     end 
%     if Vbs_ref > 150 %相電壓最大值不超過vdc/2
%         Vbs_ref = 150;
%     end 
%     if Vcs_ref > 150 %相電壓最大值不超過vdc/2
%         Vcs_ref = 150;
%     end 
%     if Vas_ref < -150 %相電壓最大值不超過vdc/2
%         Vas_ref = -150;
%     end 
%     if Vbs_ref < -150 %相電壓最大值不超過vdc/2
%         Vbs_ref = -150;
%     end 
%     if Vcs_ref < -150 %相電壓最大值不超過vdc/2
%         Vcs_ref = -150;
%     end 
%     vax = Vas_ref;
%     vbx = Vbs_ref;
%     vcx = Vcs_ref;
%     %--------------------------------------------------------------
%     % 取樣 ＆ 保持 
%     if t1 > 1/fc
%         vax1 = vax;
%         vbx1 = vbx;
%         vcx1 = vcx;
%         t1 = 0;
%     end
%     % PWM 控制器---------------------------------------------------- 
%     % o點為二電容間的中性點
%     if vax1 >= carrier
%         vao = vdc/2;  
%     elseif vax1 < carrier
%         vao = -vdc/2;
%     end
%     if vbx1 >= carrier
%         vbo = vdc/2;
%     elseif vbx1 < carrier
%         vbo = -vdc/2;
%     end
%     if vcx1 >= carrier
%         vco = vdc/2;
%     elseif vcx1 < carrier
%         vco = -vdc/2;
%     end
%     % 計算線電壓 vab, vbc, vca
%     vab = vao - vbo;
%     vbc = vbo - vco;
%     vca = vco - vao;
%     % 計算相電壓 vas, vbs, vcs
%     vas = (vab - vca)/3;
%     vbs = (vbc - vab)/3;
%     vcs = (vca - vbc)/3;
%     % 計算相應進入馬達的 d, q 軸電壓
%     vds = (2/3)*(vas - 0.5*vbs - 0.5*vcs);
%     vqs = (2/3)*(sqrt(3)*vbs/2 - sqrt(3)*vcs/2);
      vds = (2/3)*(Vas_ref - 0.5*Vbs_ref - 0.5*Vcs_ref);
      vqs = (2/3)*(sqrt(3)*Vbs_ref/2 - sqrt(3)*Vcs_ref/2);

    % 感應馬達二軸模型
    d_ids = (-Rs*ids/Lsigma + (Omega + (1-Sigma)/Sigma*wr)*iqs + Lm/(Lsigma*Tr)*idr + Lm*wr/Lsigma*iqr + vds/Lsigma)*dt;
    ids = ids + d_ids;
    d_iqs = ((-Omega - (1-Sigma)/Sigma*wr)*ids - Rs/Lsigma*iqs - wr*Lm/Lsigma*idr + Lm/(Lsigma*Tr)*iqr + vqs/Lsigma)*dt;
    iqs = iqs + d_iqs;
    d_idr = (Rs*Lm/(Lsigma*Lr)*ids - wr*Lm/(Sigma*Lr)*iqs - 1/(Sigma*Tr)*idr + (Omega - wr/Sigma)*iqr - Lm*vds/(Lsigma*Lr))*dt;
    idr = idr + d_idr;
    d_iqr = (wr*Lm/(Sigma*Lr)*ids + Rs*Lm/(Lsigma*Lr)*iqs + (-Omega + wr/Sigma)*idr - iqr/(Sigma*Tr) - Lm*vqs/(Lsigma*Lr))*dt;
    iqr = iqr + d_iqr;
    % calculate rotor flux
    phidr_s = Lm*ids + Lr*idr;
    phiqr_s = Lm*iqs + Lr*iqr;
    [f_mag, f_angle] = cart2pol(phidr_s, phiqr_s);
    theta_e = f_angle;
    % 3 phase current feecback
    ias = ids;
    ibs = -0.5*ids + sqrt(3)*iqs/2;
    ics = -0.5*ids - sqrt(3)*iqs/2;

    % calculate torque 
    Te = (3/2)*(poles/2)*Lm*(iqs*idr - ids*iqr);
    % calculate speed and position
    d_wrm = ((Te-Tl) - B*wrm) * dt/J;
    wrm = wrm + d_wrm;
    wr = (poles/2) * wrm;
    % calculate slip frequency of rotor-oriented FOC
%     wsl = (Rr*iqse)/(Lr*idse + 0.00000001);
%     we = wr + wsl;
%     d_theta_e = we * dt;
%     theta_e = f_angle;
% %     theta_e1 = theta_e;
%     we1 = we;
%    d_theta_e = we * dt;
%     theta_e = theta_e + d_theta_e; 
    % 2 phase current feecback
    idse = ids*cos(theta_e) + iqs*sin(theta_e);
    iqse = -ids*sin(theta_e) + iqs*cos(theta_e);

%     % calculate flux estimation
%     d_phi_dr_est = (Lm*idse - phi_dr_est)*Rr/Lr * dt;
%     phi_dr_est = phi_dr_est + d_phi_dr_est;
    %---------------------------------------------------------------------
    %產生 PWM 載波---------------------------------------------------------
    carrier =  150 * signe * (2/(1/(2*fc)))*dt + carrier;
    if carrier > 150
        signe = -1;
    end
    if carrier < -150
        signe = 1;
    end
    %---------------------------------------------------------------------
    t = t + dt;
    t1 = t1 + dt;
    % 將監看變數存入陣列,並標么化--------------------------------------------
    if x>16
        t  % 命令視窗輸出時間 
        tn(n) = t; 
       % Te_refn(n) = Te_ref/Tb;
        iq_refn(n) = iq_ref/Ib;
        id_refn(n) = id_ref/Ib;
        iasn(n) = ias/Ib;
        ibsn(n) = ibs/Ib;
        icsn(n) = ics/Ib;
        Vd_refn(n) = Vd_ref/Vb;
        Vq_refn(n) = Vq_ref/Vb;
%         vasn(n) = vas/Vb;
%         vbsn(n) = vbs/Vb;
%         vcsn(n) = vcs/Vb;
        iqsn(n) = iqs/Ib;   
        idsn(n) = ids/Ib;
        Ten(n) = Te/Tb;
        wrn(n) = wrm/wb;
        wrrefn(n) = wrm_ref/wb;
        theta(n) = theta_e;
%         vax_o(n) = vax/Vb; 
        n = n + 1;
        x = 1;
    end
    x = x + 1;
    %---------------------------------------------------------------------
end
%結束模擬
%-------------------------------------------------------------------------
%繪圖----------------------------------------------------------------------
figure(1); orient tall;
subplot(4,2,1)
plot(tn, wrrefn, 'k--', tn, wrn, 'k'); axis([0 tfinal -1.2 1.2]);
subplot(4,2,2)
plot(tn, id_refn, 'k--', tn, idsn, 'k'); axis([0 tfinal -1.2 1.2]);
subplot(4,2,3)
plot(tn, Ten, 'k'); axis([0 0.05 -2.1 2.1]);
subplot(4,2,4)
plot(tn, Vd_refn, 'k', tn, Vq_refn, 'k--'); axis([0 tfinal -1.5 1.5]);
subplot(4,2,5)
plot(tn, vax_o, 'k'); axis([0 tfinal -2 2]);
subplot(4,2,6)
plot(tn, iasn, 'k', tn, ibsn, 'k--', tn, icsn, 'k:'); axis([0 tfinal -1.5 1.5]);
subplot(4,2,7)
plot(tn, iq_refn, 'k--', tn, iqsn, 'k'); axis([0 tfinal -2 2]);
subplot(4,2,8)
plot(tn, iq_refn, 'k'); axis([0 tfinal -2 2]);
%-------------------------------------------------------------------------
        
        