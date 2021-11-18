function f1 = optimizationEz(x)
format compact
clear 
clc
f1 = 0;
x=[0.5,0.5];
for k = -10:5
f1 = @(x) (x(1).^3+x(2).^3-3.*(x(1).*x(2)));
end
x0 = [1,1];
[xmin,fval,exitflag,output] = fminsearch(f1,x0,optimset('PlotFcns',@optimplotfval))
end