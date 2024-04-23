clc
clear all
close all

% example - 1 sheet

fun = @(x) exp(x).* sin(x.^2)
int = integral(fun, 0, 1);
int7 = vpa(int, 7)

% example - 2 sheet

fun = @(x, y) 1./sqrt(x.^2 + y.^2)
ymin = @(x) -x
ymax = @(x) x.^2
int = integral2(fun, 0, 2, ymin, ymax);
int7 = vpa(int, 7)


