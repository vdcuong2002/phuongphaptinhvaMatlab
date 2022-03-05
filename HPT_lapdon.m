function [X, normA, normB, SaiSo] = HPT_lapdon(A, B, C, ll, type_ss)
% for test: ;A = [2 1 25; 15 2 -1; 5 -20 3]; B = [29; 18; -32]; C = [0; 0;
% 0]; ll = 3
% A = [2.21 6.17 -2.13; 3.12 -1.83 -9.54; 8.75 -3.12 1.81]; B = [-12.26 -2.76 -16.18]
m = (size(B));
if (m(1) == 1)
    B = B.';
end
m = (size(C));
if (m(1) == 1)
    C = C.';
end
sizeA = size(A);
n = sizeA(1);
X = C;
m = zeros(n, 1);
for i = 1:1:(n-1)
    for j = (i+1):1:n
        if (find(abs(A(i, :)) == max(abs(A(i, :)))) > find(abs(A(j, :)) == max(abs(A(j, :)))))
            temp = A(i, :);
            A(i, :) = A(j, :);
            A(j, :) = temp;
            temp = B(i, :);
            B(i, :) = B(j, :);
            B(j, :) = temp;
        end
    end
end
for i = 1:n
    m(i) = A(i, i);
    A(i, i) = 0;
end
A = A./m
B = B./m
normA = [norm(A, inf) norm(A, 1) norm(A, 'fro')];
normB = [norm(B, inf) norm(B, 1) norm(B, 'fro')];
if (type_ss == 0)
        SaiSo = normA(1)^ll/(1 - normA(1))*norm(-A*C + B - C, inf);
end
for i = 1:ll
    pre_X = X;
    X = -A*X + B;
    if (type_ss == 1)
        SaiSo = normA(1)/(1 - normA(1))*norm(X - pre_X, inf);
    end
end
end

