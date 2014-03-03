% signal x
f1=10;          % 10 Hz sine wave
f2=300;          % 300 Hz sine wave
T=0.001;        % sampling freq. = 1000 Hz
N=100;
n=0:1:N-1;
x=sin(2*pi*f1*n*T)+sin(2*pi*f2*n*T);
subplot(2,2,1); stem(n,x);
xlabel('time index'); ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T = 0.001 sec');

% DFT of x
f=n/T/N;
subplot(2,2,2); stem(f,abs(fft(x)));
xlabel('frequency in Hz'); ylabel('|X(f)|');

% downsampling & DFT
z=decimate(x,2);
n2=0:1:N/2-1;
f=n2/(2*T)/(N/2);
subplot(2,2,3); stem(f,z);
xlabel('time index'); ylabel('x1[n]');
title('downsampled signal x1[n]');
subplot(2,2,4); stem(f,abs(fft(z)));
xlabel('frequency in Hz'); ylabel('|X1(f)|');