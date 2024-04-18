clc
clear all
close all

x = [6 8 10];
y = [12.07 18.37 26.42];
h = x(2) - x(1);

D1 = (y(3) - y(1)) / (2*h)          % speed D1
D2 = (y(3) - 2*y(2) + y(1)) / h^2   % accelaration D2