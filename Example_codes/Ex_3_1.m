% Computing the DTFT of signal x
clear;
x=[1 1 1 1 1 1 1 1 1 1];
n=0:length(x)-1;
K=500;
k=-K:K;
w=pi*k/K;
X=x*exp(-j*n'*w);
magX=abs(X);
angX=angle(X);
subplot(2,1,1); plot(w/pi,magX);  xlabel('frequency \omega/\pi');    ylabel('|X(e ^j^\omega)|');
title('DTFT of x[n]');
subplot(2,1,2); plot(w/pi,angX);  xlabel('frequency \omega/\pi');    ylabel('arg[X(e ^j^\omega)]');


