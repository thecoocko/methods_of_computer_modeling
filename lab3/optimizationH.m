function f2 = optimizationH(x)
format compact
clear 
clc
f2 = 0;
x0 = [0.5,0.5]
for k=-10:5
f2 = @(x) 100*(x(1).^2-x(2).^2)+(1-x(1)).^2;
end
fprintf('????? ???????? ?? ????????? fminsearch ???????? ???????\n')
[xmin,fval,exitflag,output] = fminsearch(f2,x0,optimset('PlotFcns',@optimplotfval))
pause
fprintf('????? ???????? ?? ????????? fminunc ???????? ???????\n')
[xmin,fval,exitflag,output] = fminunc(f2,x0,optimset('PlotFcns',@optimplotfval))
pause 
fprintf('????? ???????? ?? ????????? ga ???????? ???????. ?????? ?????????: 10\n')
rng default
options=gaoptimset('PlotFcns',@gaplotbestf,'PopulationSize',50); 
[xmin,fval,exitflag,output] = ga(f2,2,[],[],[],[],[-10 -10],[5 5],[], options)
end