P = 2*pi/(2*pi*50); % signal period 
N = 10001; % sample points
T = 5e-5;  % sampling period
D = 2*pi/(N*T); % freq. resolution  
m = ceil(-(N-1)/2):ceil((N-1)/2);
w = m*D;
Y = T*fft(out.Vab(1:10001)); % calculate DTFS coefficient from FFT results
%Y = fft(test_2)/N;
Y = round(Y.*10000)./10000;
plot(w/2/pi,abs(shift(Y')));
title("Complex Magnitude of fft Spectrum")
xlabel("f (Hz)")
ylabel("|fft(X)|")
