function [fitresult, gof, xData, yData] = createFitpoly(X, Y, str)
[xData, yData] = prepareCurveData( X, Y );
ft = fittype( str );
[fitresult, gof] = fit( xData, yData, ft );
end