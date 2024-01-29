clc
clear all
close all

x(1) = 0.6;
y(1) = -0.1;
z(1) = -3;

iter(1) = 0;
for n = 1:4
    iter(n+1) = n;
    x(n+1) = (12+5*y(n)+2*z(n))/8;
    y(n+1) = (20-2*x(n)+7*z(n))/10;
    z(n+1) = (38-5*x(n)-3*y(n))/-12;
end

Solution = [iter', x', y', z']
    
