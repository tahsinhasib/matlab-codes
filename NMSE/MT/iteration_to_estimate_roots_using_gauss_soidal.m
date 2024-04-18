clc
clear all
close all

x(1) = 1.5;
y(1) = -1;
z(1) = 1;

iter(1) = 0;
for n = 1:4
    iter(n+1) = n;
    x(n+1) = (16+3*y(n)-2*z(n))/8;
    y(n+1) = (-9+2*x(n+1)-z(n))/8;
    z(n+1) = (1+2*x(n+1)-4*y(n+1))/10;
end

Solution = [iter', x', y', z']
    
