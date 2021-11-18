function area = Butenko_124_19_2_var2_task1()
clear; clc; format compact;
x = input('X: ')
y = input('Y: ')
if length(x) ~= length(y)
   fprintf('Vectors has different length\n')
else
    area = 0;
    %Sort Ascending
    fprintf('x - sorted by ascending\n')
    x = sort(x)
    for k=1:(length(x)-1)
    %Shoelace formula
        area = abs((area + (x(k)*y(k+1)-x(k+1)*y(k))));  
    end
end
end