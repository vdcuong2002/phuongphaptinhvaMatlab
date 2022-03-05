function [fitresult, gof, xData, yData] = createFit_exp(X, Y)
[xData, yData] = prepareCurveData( X, Y );
ft = fittype( 'exp1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0];
[fitresult, gof] = fit( xData, yData, ft, opts );
end

