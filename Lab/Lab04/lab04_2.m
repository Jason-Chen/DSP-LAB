clear;
clc;
num = [1 -6.9 13.4 -7.2];
den = [1 -1.3 0.47 -0.035];
pole = roots(num);
zero = roots(den);

ca=1;
cb=1;
for i=1 : length(pole)
    if (abs(pole(i)) > 1 )
        ca = ca * (-1) * pole(i);
        pole(i) = 1 / pole(i);
    end
end    
for i=1 : length(zero)
    if abs(zero(i)) > 1 
        cb = cb * (-1) * zero(i);
        zero(i) = 1 / zero(i);
    end
end 
   
mina = ca * poly(pole)
minb = cb * poly(zero) 
 
f0 = 10;          % 10 Hz sine wave
f1 = 30;          % 30 Hz sine wave
T = 0.01;         % sampling period = 0.01 sec
N = 100;
n = 0:1:N-1;
a = sin(2*pi*f0*n*T);
b = sin(2*pi*f1*n*T*0.1); % increase the 30Hz sampling rate.
x = a + b;
 
figure(1);
subplot(2,1,1); stem(n,x);
xlabel('time index'); ylabel('s[n]');
f = n / T / N;
subplot(2,1,2); stem(f, abs(fft(x)));
xlabel('frequency in Hz'); ylabel('|S(f)|');
 
figure(2);
y = filter(num, den, x);
subplot(2, 1, 1); stem(y);
xlabel('time index'); ylabel('sd[n]');
subplot(2, 1, 2); stem(f, abs(fft(y)));
xlabel('frequency in Hz'); ylabel('|Sd(f)|');
 
figure(3);
y2 = filter(minb,mina,y);
subplot(2, 1, 1); stem(y2);
xlabel('time index'); ylabel('sc[n]');
subplot(2, 1, 2); stem(f, abs(fft(y2)));
xlabel('frequency in Hz'); ylabel('|Sc(f)|');
