function [I, X, Y, saiso] = hinhthang(fcn, a, b, n)
step = (b - a)/n;
X = a : step : b;
Y = double(subs(fcn, X));
I = double(step*(Y(1)/2 + Y(end)/2 + sum(Y(2:(end - 1)))));
M = max(abs(double(subs(diff(fcn, 2), X))));
saiso = abs(double(M/12*step^2*(b - a)));
end

