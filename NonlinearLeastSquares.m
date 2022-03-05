function [fitresult, gof] = NonlinearLeastSquares(x, y)
format long;
[xData, yData] = prepareCurveData( x, y );

ft = fittype( 'b*x + c*x^2', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.764179178746078 0.322027719711174];

[fitresult, gof] = fit( xData, yData, ft, opts );

figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'y vs. x', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );

xlabel( 'x', 'Interpreter', 'none' );
ylabel( 'y', 'Interpreter', 'none' );
grid on


