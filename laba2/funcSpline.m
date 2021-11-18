%cubic spline iterpolation 
%takes 2 arguments: sample x and sample y
%returns cubic spline interpolation
function cuSpline = funcSpline(sampleX, sampleY)
xx = [sampleX(1):0.1:sampleX(length(sampleX))];
hold on
set(gcf,'Name','Spline interpolation')
grid on
cuSpline=spline(sampleX,sampleY,xx);
plot(xx,spline(sampleX,sampleY,xx),'k-',sampleX,sampleY,'ro')
end