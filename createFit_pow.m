function [fitresult, gof, xData, yData] = createFit_pow(X, Y)
[xData, yData] = prepareCurveData( X, Y );
ft = fittype( 'power1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0];
[fitresult, gof] = fit( xData, yData, ft, opts );
end

