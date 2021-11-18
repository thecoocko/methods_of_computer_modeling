%least squares method
%takes 2 arguments: sample x and sample y
%return 2 values: x and polynom
function polynom = leastSquares(sampleX,sampleY)
n=length(sampleX);
sx = sum(sampleX);
sx2= sum(sampleX.^2);
sx3 = sum(sampleX.^3);
sx4 = sum(sampleX.^4);
sy = sum(sampleY);
sxy = sum(sampleX.*sampleY);
sx2y = sum(sampleX.^2.*sampleY);
A = [n sx sx2;
    sx sx2 sx3;
    sx2 sx3 sx4];
b = [sy;
    sxy;
    sx2y];
X = A\b;
x = min(sampleX):0.1:max(sampleX);
polynom = X(1)+X(2)*x+X(2)*x.^2;
plot(x,polynom)
end