function [I, X, Y, saiso] = simpson(fcn, a, b, n, k)
step = (b - a)/n;
X = a : step : b;
Y = double(subs(fcn, X));
M = max(abs(double(subs(diff(fcn, 4), X))));
if ( k == 1/3)
    I = double(step*k*(Y(1) + Y(end) + 4*sum(Y(2:2:(end - 1))) + 2*sum(Y(3:2:(end-1)))));
    saiso = abs(double(M*step^4*(b-a)/180));
end
if (k == 3/8)
    I = double(step*k*(Y(1) + Y(end) + 2*sum(Y(4:3:(end - 1))) + 3*(sum(Y) - sum(Y(4:3:(end - 1))) - Y(1) - Y(end))));
    saiso = abs(double(M*step^4*(b-a)/80));
end
end

