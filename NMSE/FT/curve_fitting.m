clc
clear all
close all

xd = [3 6 9 12 15];
yd = [2.87 3.60 4.28 4.88 5.35];

fun = @(a, xd) a(1)./(1 + a(2).*exp(-a(3).*xd));
a0 = [6, 2, 0.2];

a = lsqcurvefit(fun,a0,xd,yd)