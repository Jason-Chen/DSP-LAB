% y[n]=x1[n] * x2[n]
clear;
x1=[6 5 4 3 2 1];
x2=[1 0 0 0 1];

maxNum = max(length(x1), length(x2));
delta = abs(length(x1)- length(x2));
j = 1;

for i=1:length(x1) + length(x2) -1
     high = length(x2);
     low = (length(x2) + 1 - i);
     if(low <= 0) 
         low = abs(low -1);
         x3(i) = sum( x1((mod(i, length(x1))+2):6) .* x2(1 : length(x1) + length(x2) - i));
     else
          x3(i) = sum(x1(1:i) .* x2(min(low, high) : max(low : high)));
     end
end
n=1:length(x3);
stem(n,x3);