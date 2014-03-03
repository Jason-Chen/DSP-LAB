% Generating a single-tone sine signal xa
clear;
f0=10;          % 10 Hz sine wave
dt=0.001;       % resolution
Length=0.4      % Total length =0.4 sec
t=0:dt:Length;
xa=sin(2*pi*f0*t);
plot(t,xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');


