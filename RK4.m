function [X Y] = RK4(fcn, range, step, init)
syms x y;
X = range(1) : step : range(end);
Y = zeros(1, length(X));
Y(1) = init;
for i = 1:(length(X) - 1)
    fxy = double(subs(subs(fcn,x, X(i)), y, Y(i)));
    k1 = step*fxy;
    fxy = double(subs(subs(fcn,x, X(i) + step/2), y, Y(i) + k1/2));
    k2 = step*fxy;
    fxy = double(subs(subs(fcn,x, X(i) + step/2), y, Y(i) + k2/2));
    k3 = step*fxy;
    fxy = double(subs(subs(fcn,x, X(i+1)), y, Y(i) + k3));
    k4 = step*fxy;
    Y(i + 1) = Y(i) + 1/6*(k1 + 2*k2 + 2*k3 + k4);
end
end