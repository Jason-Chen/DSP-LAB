% a 10-Hz sine wave is input to an allpass system
num = [-0.5 1];
den = [1 -0.5];
freqz(num,den,200,100);
pause;
zplane(num,den);
pause;

f0=10;          % 10 Hz sine wave
T=0.01;        % sampling freq. = 100 Hz
N=100;
n=0:1:N-1;
x=sin(2*pi*f0*n*T);
subplot(4,1,1); stem(n,x);
xlabel('time index'); ylabel('x[n]');

f=n/T/N;
subplot(4,1,2); stem(f,abs(fft(x)));
xlabel('frequency in Hz'); ylabel('|X(f)|');


y=filter(num,den,x);
subplot(4,1,3); stem(n,y);
xlabel('time index'); ylabel('y[n]');
subplot(4,1,4); stem(f,abs(fft(y)));
xlabel('frequency in Hz'); ylabel('|Y(f)|');

