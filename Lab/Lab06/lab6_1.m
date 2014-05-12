% Chebyshev lowpass filter
[b,a] = cheby1(9,0.05,0.4); % cut-off freq. = 0.8 pi = 400 Hz

% signal x
f1 = 10;   % 10 Hz sine wave
f2 = 300;  % 300 Hz sine wave
T = 0.001; % sampling freq. = 1000 Hz
N = 100;
n = 0:1:N-1;
x = sin(2*pi*f1*n*T)+sin(2*pi*f2*n*T);
subplot(3, 2, 1); stem(n, x);
xlabel('time index'); ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T = 0.001 sec');

% DFT of x
f = n/T/N;
subplot(3, 2, 2); stem(f, abs(fft(x)));
xlabel('frequency in Hz'); ylabel('|X(f)|');

% upsampling
y = upsample(x,2);
n = 0:1:2*N-1;
f = n / (T/2) / (2*N);
subplot(3,2,3); stem(f,y);
xlabel('time in samples');
title('upsampled signal y[n]');

% DFT of y
subplot(3, 2, 4); stem(f, abs(fft(y)));
xlabel('frequency in Hz'); ylabel('|Y(f)|');

% lowpass filtering & Decimation & DFT
z=filter(b, a, y);
subplot(3, 2, 5); stem(f, z);
xlabel('time index'); ylabel('z[n]');
title('downsampled signal z[n]');
subplot(3, 2, 6); stem(f, abs(fft(z)));
xlabel('frequency in Hz'); ylabel('|Z(f)|');