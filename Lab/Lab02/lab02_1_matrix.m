% Implement convolution with matrix

A = [6 5 4 3 2 1];
B = [1 0 0 0 1];

Al = length(A);
Bl = length(B);

N = 1 : Al+Bl-1;
Nl = length(N);

y = zeros(Bl, Nl);

for i = 1 : Bl
   for j = 1 : Al
       y(i, i+j-1) = B(1, i) * A(1, j);
   end
end

y = sum(y);

disp(y);
stem(N, y);
title('Convoluted sequence'); xlabel('n'); ylabel('y(n)');