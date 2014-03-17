% Discrete sine wave 10Hz and 30Hz
% W = 0.2Π, -30 ? n ? 30。
clear;
f0 = 10;            % 10 Hz sine wave
f1 = 30;            % 30 Hz sine wave
Length = 0.4;       % Total length = 0.4 sec
T = 0.01;           % sampling period = 0.01 sec
N = Length / T;
n = 0:1:N-1;
x1 = sin(2*pi*f0*n*T);
x2 = sin(2*pi*f1*n*T);

subplot(2,2,[1, 3]); stem(n, x1+x2);
xlabel('time n'); ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T = 0.01 sec');

% Computing the DFT of signal x
N=10;
x=x1+x2;
n=0:length(x)-1;
k=0:N-1;
X=x*exp(-j*2*pi/N*n'*k);
magX=abs(X);
angX=angle(X);

subplot(2,2,2); stem(k,magX); xlabel('frequency index k');
ylabel('|X[k]|');
title('10-pt DFT of x[n]');

subplot(2,2,4); stem(k,angX); xlabel('frequency index k');
ylabel('arg(X[k])');