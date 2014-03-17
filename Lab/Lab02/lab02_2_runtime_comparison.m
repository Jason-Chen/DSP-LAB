% Runtime comparison of forloop and matrix convolution implementation

clear;

N = 100;

eltime_forloop = zeros(1, N);
for ii = 1:N
    tic;
    evalc('lab02_2_forloop()');
    eltime_forloop(ii) = toc;
end

eltime_matrix = zeros(1, N);
for ii = 1:N
    tic;
    evalc('lab02_2_matrix()');
    eltime_matrix(ii) = toc;
end

avg_forloop = mean(eltime_forloop);
avg_matrix = mean(eltime_matrix);

fprintf('Average elapsed time of forloop one was %f seconds.\n', avg_forloop);
fprintf('Average elapsed time of matrix one was %f seconds.\n', avg_matrix);
fprintf('Matrix one was %f times faster then forloop one.\n', avg_forloop / avg_matrix);