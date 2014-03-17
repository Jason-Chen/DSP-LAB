% Implement convolution with for loop

A = [6 5 4 3 2 1];
B = [1 0 0 0 1];

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