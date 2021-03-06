% Generating a discrete-time signal x
clear;
f0=10;          % 10 Hz sine wave
Length=0.4      % Total length =0.4 sec
T=0.01;        % sampling period = 0.01 sec
N=Length/T;
n=0:1:N-1;
x=sin(2*pi*f0*n*T);
stem(n,x);
xlabel('time n'); ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T = 0.01 sec');

