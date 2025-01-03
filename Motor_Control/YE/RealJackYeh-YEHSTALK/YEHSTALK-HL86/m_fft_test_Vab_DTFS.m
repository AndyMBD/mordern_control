P = 1/50; % signal period 50Hz fundamental sinusoidal
N = 400; % sample points
T = P/N; % sampling period = 5e-5 (sec)
D = 2*pi/P; % freq. resolution w0 for fourier series       
m = ceil(-(N-1)/2):ceil((N-1)/2);
w = m*D;
Y = fft(out.Vab_3rd(1:400))/N; % calculate DTFS coefficient from FFT results
Y = round(Y.*10000)./10000;
plot(w/2/pi,abs(shift(Y')));
title("Complex Magnitude of fft Spectrum")
xlabel("f (Hz)")
ylabel("|fft(X)|")