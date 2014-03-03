% Computing the DFT of signal x
clear;
x(1)=1;
x(2)=1;
x(3)=1;
x(4)=1;
x(5)=1;
x(6)=1;
x(7)=1;
x(8)=1;
x(9)=1;
x(10)=1;
n=0:length(x)-1;
N=100;
k=0:N-1;
X=x*exp(-j*2*pi/N*n'*k);
magX=abs(X);
angX=angle(X);
subplot(2,1,1); stem(k,magX);  xlabel('frequency index k');    ylabel('|X[k]|');
title('100-pt DFT of x[n]');
subplot(2,1,2); stem(k,angX);  xlabel('frequency index k');    ylabel('arg(X[k])');


