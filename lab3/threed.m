function f = threed()
[x,y] = meshgrid(-10:0.5:5,-10:0.5:5)
z1 =  x.^3+y.^3-3.*x.*y;
surf(x,y,z1)
hold on;
grid on;
end