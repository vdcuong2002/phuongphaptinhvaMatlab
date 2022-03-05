function [X Y] = EulerMethod_ver2(fcn, range, step, init)
syms x y;
X = range(1) : step : range(end);
Y = zeros(1, length(X));
Y(1) = init;
for i = 1:(length(X) - 1)
    y_ngang = double(subs(subs(fcn,x, X(i)), y, Y(i)));
    temp = Y(i) + step*y_ngang;
    Y(i + 1) = Y(i) + step/2*(y_ngang +subs(subs(fcn, x, X(i+1)), y, temp));
end
end