clear;

x=[6 5 4 3 2 1];
l1 = 1; u1 = length(x); x1 = l1:u1;

h = [1 0 0 0 1];
l2 = 1; u2 = length(h); h1 = l2:u2;

l = l1+l2; u = u1+u2; n = l:u;

for i = 1:numel(n)
    y(i) = 0;
    for k = 1:numel(x)
        if (i+1-k) <= 0
            y(i) = y(i)+(x(k)*0);
            else if (i+1-k)>numel(h)y(i) = y(i)+(x(k)*0);
                else y(i) = y(i)+(x(k)*h(i+1-k));
            end
        end
    end
end

disp(y);
stem(n,y);
title('Convoluted sequence');xlabel('n');ylabel('y(n)');