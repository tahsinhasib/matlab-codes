clc
clear all
close all

x = [4 6 8 10 12];
y = [7.38 12.07 18.37 26.42 36.40];

sp = spline(x, y);

D1sp = fnder(sp, 1);
ValD1 = fnval(D1sp, [8.4, 11])

D2sp = fnder(sp, 2);
ValD2 = fnval(D2sp, [8.4, 11])