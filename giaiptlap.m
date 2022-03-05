function [X, normA, normB, SaiSo] = giaiptlap(A, B, C, ll, type_ss)
normA = [norm(A, inf) norm(A, 1) norm(A, 'fro')];
normB = [norm(B, inf) norm(B, 1) norm(B, 'fro')];
X = C;
for i = 0:(ll-1)
    preX = X;
    X = A*X + B;
    if (type_ss == 1)
        SaiSo = normA(1)/(1 - normA(1))*norm(X - preX, inf);
    end
end
if (type_ss == 0)
        SaiSo = normA(1)^ll/(1 - normA(1))*norm(-A*C + B - C, inf);
end
end

