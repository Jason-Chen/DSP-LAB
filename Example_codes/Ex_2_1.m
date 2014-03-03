% y[n]=x1[n] * x2[n]
clear;
x1=[6 5 4 3 2 1];
x2=[1 0 0 0 1];
y=conv(x1,x2);
n=1:length(y);
stem(n,y);
xlabel('time n'); ylabel('y[n]');
title('y[n]=x1[n] * x2[n]');

