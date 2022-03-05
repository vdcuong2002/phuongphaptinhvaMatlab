function [fitresult, gof, xData, yData] = createFit_fourier(X, Y)
[xData, yData] = prepareCurveData( X, Y );
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0];
[fitresult, gof] = fit( xData, yData, ft, opts );



