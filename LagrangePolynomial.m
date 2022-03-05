function [f, L] = LagrangePolynomial(X, Y)
% Noi suy Lagrange - Vu Duc Cuong 20202313
if (length(X) ~= length(Y))                 % Error
    error("The lengths of the X and Y matrices must be equal");
end
syms x;
l = 1;
for i = 1:length(X)
    l = l * (x - X(i));
end
L = x*zeros(1, length(X));                  % Tao ma tran L cac da thuc co so
for i= 1:length(X)
    num = l/(x - X(i));                     % Tu so
    den = subs(num, x, X(i));               % Mau so
    L(i) = simplify(num/den);               % Tinh da thuc co so bac y
end
f = sum(L.*Y);                              % Tinh da thuc f
L = L.';                                    % Lay chuyen vi cua ma tran L
f = simplify(f);                            % Rut gon da thuc f
end