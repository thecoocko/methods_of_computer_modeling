function twins = Butenko_124_19_2_var2_task2()
clear; clc; format compact;
n = input('N: ')
%fills in twins with zeros
twins = zeros(1,n);
m = 0;
for k=n:1:2*n
    %checks if k is prime if true k goes into twins
    if isprime(k)
        m = m+1;
        twins(m) = k;
    end
end
twins = twins(1:m)
end
