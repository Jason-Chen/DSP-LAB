% Generating a single-tone sine signal xa
clear;
max = 1;
dt = 0.01;            % resolution
Length = 3;           % Total length =0.4 sec
t = -Length:dt:Length;
xa = max * sin(pi*t) ./ (pi*t);
xa(Length/dt+1) = max;
plot(t,xa, t, xa.*xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');