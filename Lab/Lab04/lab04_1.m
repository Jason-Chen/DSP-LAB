clear();
n = input('How many point of h[n] would like to compute?');

x = [2 3 4 5];

a = [1 -0.8]; % denominator coefficient
b = [1 -1];   % numerator coefficient
h(1) = 1;
for i = 2 : n
    h(i) = -1/4*0.8^(i-1);
end

fout = filter(b, a, x);
cout = conv(h, x);
FOUT = fft(fout);
COUT = fft(cout);

%nF=1:length(x);
nC = 1 : n+length(x)-1;

% fill '0' for the filter. Because the length of filter is same as input.
for ex = length(x)+1 : n+length(x)-1
   fout(ex) = 0;
   FOUT(ex) = 0;
end

% freq. domain. (Up)
subplot(2, 2, 1); stem(nC, FOUT);
xlabel('filter - frequency in Hz'); ylabel('|Y(f)|');
subplot(2, 2, 2); stem(nC, COUT);
xlabel('convolution - frequency in Hz'); ylabel('|Y(f)|');
% time domain. (Down)
subplot(2, 2, 3); stem(nC, fout);
xlabel('filter - time in n'); ylabel('|y(f)|');
subplot(2, 2, 4); stem(nC, cout);
xlabel('convolution - time in n'); ylabel('|y(f)|');
