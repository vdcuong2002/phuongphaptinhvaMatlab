function [a, b] = noisuy(x,y)
syms a b X Y real
Y = a*X + b;
S = 0;
for i = 1 : length(x)
    S = S + (subs(Y, X, x(i)) - y(i))^2;
end

hs = solve(diff(S, a), diff(S, b));
a = double(hs.a);
b = double(hs.b);
end
