function [N] = NewtonPolynomial_v2(X,Y)
N = [X; Y]';
N = [N zeros(length(X), length(X) - 1)];
count = 1;
for i = 2: length(X)
    for j = (count + 1):length(X)
        N(j, i+1) = N(j, i) - N(j-1, i);
    end
    count = count + 1;
end
end