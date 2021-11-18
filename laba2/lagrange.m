%lagrange interpolation
%takes 3 arguments: sample x, sample y and values of polynom
%returns lagrange polynom
function lag = lagrange(sampleX, sampleY, valuesOfPolynom)
n = length(sampleX);
lag = zeros(size(valuesOfPolynom));
for k=1:n
    t=ones(size(valuesOfPolynom));
    for m = [1:k-1,k+1:n]
        t=t.*(valuesOfPolynom-sampleX(m))/(sampleX(k)-sampleX(m));
    end
    lag = lag+sampleY(k)*t;
end


end