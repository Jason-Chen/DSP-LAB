clear;
f0 = 10;          % 10 Hz sine wave
Length = 0.1;     % Total length = 0.1 sec
T = 0.01;         % sampling period = 0.01 sec
N = Length/T;
n = 0 : 1 : N-1;
x = sin(2*pi*f0*n*T);

% Print original signal
subplot(3,1,1); stem(n, x);
xlabel('n'); ylabel('sin[n]');

% 100-point DFT
N = 100;
k = 0 : N-1;
X = x*exp(-j*2*pi/N*n'*k);
magX = abs(X);
angX = angle(X);

% Print DFT signal
subplot(3, 1, 2); stem(k, magX);
xlabel('frequency index k'); ylabel('|X[k]|');
title('100-pt DFT of y[n]');
% Print ARG
subplot(3, 1, 3); stem(k, angX); 
xlabel('frequency index k'); ylabel('arg(X[k])');
