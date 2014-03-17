% Duplicate convolution with matrix

% make matrix
basisN = 1000;
basisA = [1 2 3 4 0];
basisB = [1 2 3 0];

A = repmat(basisA, 1, basisN/length(basisA));
B = repmat(basisB, 1, basisN/length(basisB));

% calc started
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