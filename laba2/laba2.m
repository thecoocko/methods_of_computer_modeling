%script made by Nadiia Butenko, 124-19-2 FIT
%this script resolve aproximation by lagrange polynom,
%cubic spline interpolation, least squares method
function f = laba2()
clear
clc
dataX = 1:.1:11;
dataY = [0 0.324097 0.643881 0.922415 1.1253 1.224745 1.20301 1.054847 0.788625 0.425989 4.62*10^(-5) -0.44776 -0.87178 1.2269 -1.47335 -1.58114 -1.53356 -1.3294 -0.98363	-0.52634 -0.00011 0.543966 1.051358 1.469572 1.753617 1.870829 1.804553 1.556275 1.145949 0.610438...
    0.000196 -5.19505 -10.3689 -14.959 -18.4126 -20.25 -20.1243 -17.8711 -13.5425 -7.41942 0 8.037451 15.89357 22.72513 27.73269 30.25 29.82532 26.2854 19.77381 10.75785 0.001176 -11.4973 -22.5932 -32.1089 -38.9547 -42.25 -41.4287 -36.3182 -27.1814 -14.7151...
    0.00018 0.856485 1.640842 .27459 2.692863 2.851227 2.730379 2.338403 1.710348 0.905108 -9.6*10^(-5) -0.91714 -1.75557 -2.43156 -2.8763 -3.04297 -2.91168 -2.49175 -1.82115 -0.96308 -23 0.97427 1.863736 2.579679 3.049516 3.224158 3.083118 2.636854 1.926069 1.01801...
    0.000108 -1.02845 -1.96638 -2.72032 -3.21408 -3.3964 -3.24618 -2.77495 -2.02598 -1.07035 -0.00023];

avgValueOfDataY = mean(dataY,'all');

trainingSampleX=[];
trainingSampleY=[];
testSampleX=[];
testSampleY=[];
%1 split sample on even and odd
for k = 1:length(dataX)
    if mod(dataX(k),2)==0 
        trainingSampleX(end+1) = dataX(k);
        trainingSampleY(end+1) = dataY(k);
    end
    testSampleX(end+1) = dataX(k);
    testSampleY(end+1) = dataY(k);
end
grid on
%2 aproximation quadric model (training sample)
quadricModel(trainingSampleX, trainingSampleY)
%3 interpolation Lag (training sample)
valuesOfPolynom = linspace(1,9,1000);
lagPolynom = lagrange(trainingSampleX, trainingSampleY, valuesOfPolynom);
%error =  polyval(lagPolynom,trainingSampleX)-trainingSampleY
errorMaxLag = max(dataY-lagPolynom(1:101))/avgValueOfDataY
errorMaxDevLag = sqrt(sum((dataY-lagPolynom(1:101)).^2)/length(dataY)*...
    (length(dataY)-1))
figure(1)
%polynom plot
set(gcf,'Name','polynom plot&node plot')
plot(valuesOfPolynom,lagPolynom,'r')
hold on
%node plot
grid on
plot(trainingSampleX,trainingSampleY,'bo')
%4 least squares (training sample) second power
figure(2)
grid on
plot(trainingSampleX,trainingSampleY)
hold on
leastSquares(trainingSampleX,trainingSampleY);

errorMaxLS = max(dataY(1:81)-leastSquares(trainingSampleX,trainingSampleY))/avgValueOfDataY
errorMaxDevLS = sqrt(sum((dataY(1:81)-leastSquares(trainingSampleX,trainingSampleY)).^2)/length(dataY(1:81))*...
    (length(dataY(1:81))-1))
%5 spline (training sample)

funcSpline(trainingSampleX, trainingSampleY);
errorMaxSpline = max(dataY(1:81)-funcSpline(trainingSampleX, trainingSampleY))/avgValueOfDataY
errorMaxDevSpline = sqrt(sum((dataY(1:81)-funcSpline(trainingSampleX, trainingSampleY)).^2)/length(dataY(1:81))*...
    (length(dataY(1:81))-1))
end

