clc
clear all
close all

F=@(x) [x(1)^2+x(2)-1; x(2)^3-2*x(1)+4];
% Guess solution
x0 = [1; -1];
% Solve the system
x = fsolve(F, x0)
