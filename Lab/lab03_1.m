% Computing the DTFT of signal x
clear;
x=[1 1 1 1 1 1 1 1 1 1];
n=0:length(x)-1;
K=500;
k=-K:K;
w=pi*k/K;

xr = x*cos(n'*w);
xi = x*sin(n'*w);
magX = sqrt(xr.^2 + xi.^2);
angX = -atan2(xi, xr);

title('DTFT of x[n]');
subplot(2,1,1); plot(w/pi,magX);
xlabel('frequency \omega/\pi'); ylabel('|X(e^j^\omega)|');
subplot(2,1,2); plot(w/pi,angX);
xlabel('frequency \omega/\pi'); ylabel('arg(X(e^j^\omega))');
