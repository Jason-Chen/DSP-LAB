% sinc(t) = sin (Πt)/ Πt
% sinc(t)^2 for -3 ≤ t ≤ 3
% Lab1-1
clear;
max = 1;              % hight
dt = 0.01;            % resolution
Length = 3;           % length = 3 sec
t = -Length:dt:Length;
xa = max * sin(pi*t) ./ (pi*t);
xa(Length/dt+1) = max;
plot(t, xa, t, xa.^2);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');