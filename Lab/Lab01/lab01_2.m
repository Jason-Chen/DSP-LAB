% x[n] = sin(wn)/ Πn , where w = 0.2Π,
% -30 ≤ n ≤ 30。
% Lab1-2
clear;
max = 0.2;
Length = 30;
N = -Length:1:Length;
x = sin(max*pi*N) ./ (pi*N);
x(Length+1) = max;
stem(N, x);
xlabel('time n'); ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T = 0.01 sec');
