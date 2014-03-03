% Backward difference system y[n] = x[n] - x[n-1]
a=[1];
b=[1 -1];
x=[2 3 4 5];
y=filter(b,a,x)      % y = [2 1 1 1]

h=[1 -1];
x=[2 3 4 5];
w=conv(h,x)   % w = [2 1 1 1 -5]

h1=[1 -1 0 0 0];
x1=[2 3 4 5 0];
H=fft(h1)
X=fft(x1)
Z=H.*X
W=fft(w)          % Z = W

