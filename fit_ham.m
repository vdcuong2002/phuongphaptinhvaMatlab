function [result, SSE, fun, xData, yData] = fit_ham(X, Y, fcn)
xData = X.'; yData = Y.';
fcn = str2sym(fcn);
variable = symvar(fcn);
syms x;
variable(find(variable == x)) = [];
numvar = length(variable);
lenX = length(X);
S = 0;
for i = 1:lenX
    S = S + (subs(fcn, x, X(i)) - Y(i))^2; 
end
derS = ones(1, numvar);
derS = x*derS;
funderS = derS;
for i = 1:numvar
    derS(i) = diff(S, variable(i));
    funderS(i) = derS(i) == 0;
end
result = solve(funderS, variable);
result = double(struct2array(result));
for i = 1:numvar
    S = subs(S, variable(i), (result(i)));
    fcn = subs(fcn, variable(i), (result(i)));
end
SSE = double(S); fun = fcn;
end