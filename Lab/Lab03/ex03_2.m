f = linspace(-0.5,0.5,200); % [-0.5pi, 0.5pi]
wc = 0.25*pi;               % cutoff frequency

for M=1:5:2000
    n = (-M:M);
    for j=1:length(f)
        X(j) = sum(wc/pi*sinc(wc*n).*exp(-i*2*pi*n*abs(f(j))));
    end
    plot(f,abs(X));
    xlabel('\omega/\pi');
    ylabel('|X(e^j^\omega)|');
    title(M);
    pause;
end