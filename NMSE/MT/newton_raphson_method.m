clc
clear all
close all

F = @(x) sin(x) + 3*x - 1;
Sol = fzero(F, [0,1])

D = @(x) x^3 + x^2 - 2*x - 5;
Ans = fzero(D, [1,2])