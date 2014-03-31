clear;
f0 = 10;          % 10 Hz sine wave
Length = 0.1;     % Total length = 0.1 sec
T = 0.01;         % sampling period = 0.01 sec
N = Length/T;
n = 0 : 1 : N-1;
x = sin(2*pi*f0*n*T);

% Print original signal
subplot(2,1,1); stem(n, x);
xlabel('n'); ylabel('sin[n]');

% FFT
X = fft(x);
magX = abs(X);

% Print DFT signal
k = 0 : N-1;
subplot(2, 1, 2); stem(k, magX);
xlabel('frequency index k'); ylabel('|X[k]|');
