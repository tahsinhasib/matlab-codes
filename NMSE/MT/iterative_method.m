clc
clear all
close all

f = @(x) (2+3*x+2*cos(2*x))/4;
x(1) = 3.5;

for n=1:5
    x(n+1) = f(x(n));
end

sol = x


k = @(x) (x^3 + 2*x - 5);
y(1) = 1.4;

for n=1:5
    y(n+1) = k(x(n));
end

sol = y