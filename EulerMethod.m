function [X Y] = EulerMethod(fcn, range, step, init)
syms x y;
X = range(1) : step : range(end);
Y = zeros(1, length(X));
Y(1) = init;
for i = 1:(length(X) - 1)
    Y(i + 1) = Y(i) + step*double(subs(subs(fcn,x, X(i)), y, Y(i)));
end
end