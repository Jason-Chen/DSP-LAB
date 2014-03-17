% Duplicate convolution with for loop

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

y = zeros(1, Nl);

for i = N
    for j = 1 : Al
        if((i+1-j) > 0)
            if((i+1-j) > Bl)
              y(i) = y(i);
            else
              y(i) = y(i) + A(j) * B(i+1-j);
            end
        end
    end
end

disp(y);
stem(N, y);
title('Convoluted sequence'); xlabel('n'); ylabel('y(n)');