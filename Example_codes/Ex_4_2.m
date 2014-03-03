% pole-zero plot of H(z)
num = input('Type in the numerator coefficients (e.g., [1 -5 6]) = ');
den = input('Type in the denominator coefficients (e.g., [1 -4.5 2]) = ');
roots(num)
roots(den)
zplane(num,den)

