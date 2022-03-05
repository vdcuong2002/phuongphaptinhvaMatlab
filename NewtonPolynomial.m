function [N, f1, f2] = NewtonPolynomial(X,Y)
% NewtonPolynomial Use Newton's interpolation method to find interpolated polynomials
% INPUT: given matrix X and Y
% OUTPUT: transformation matrix N, Newton forward divided difference
% formula f1 and Newton backward divided difference formula f2
%
% Example:  X = [-1    0    3    6    7    9];
%           Y = [ 3   -6   39  822 1611 4773];
%           N = NewtonPolynomial(X,Y);
% Author: Vu Duc Cuong - EE2 - 06 - HUST! 
x = length(X);                              % length of the matrix X
y = length(Y);                              % length of the matrix Y

if (x ~= y)                                 % Error
    error("The lengths of the X and Y matrices must be equal");
end

X = X.';                                    % Matrix transpose X
Y = Y.';                                    % Matrix transpose Y

N = zeros(x, x-1);                          % Create matrix N is x*(x-1)
N = [X Y N];                                % Create

[x, y] = size(N);                           % Reuse variables x and y

for col = 3:y                               % Calculate with each column, from 3 to end
    for row = (col-1):x                     % The resulting matrix is ??a trapezoid
        distance = col - 2;                 % Distance
        num = N(row, col - 1) - N(row - 1, col - 1);
        den = N(row, 1) - N(row - distance, 1);
        N(row, col) = num/den;              % According to the formula
    end
end

t = x;
syms x;                                     % Use symbolic
f1 = N(1, 2); f2 = N(t, 2);                 % Init for f1 and f2

% Newton forward divided difference formula
for i = 3:y                     
    temp = 1;                               % Intermediate variable, to calculate each term 
    for j = 2:(i-1)                         % Cal temp
        temp = temp*(x - N(j - 1, 1));
    end
    f1 = f1 + N(i - 1, i)*temp;             % Add to f1
end
% Newton backward divided difference formula
for i = 3:y
     temp = 1;                              % Intermediate variable, to calculate each term 
     for j = t:-1:(t + 3 - i)               % Cal temp
         temp = temp*(x - N(j, 1));
     end
     f2 = f2 + N(t, i)*temp;                % Add to f2
 end
% Simpify f1 and f2
f1 = simplify(f1);                          % Simpify f1
f2 = simplify(f2);                          % Simpify f2
end