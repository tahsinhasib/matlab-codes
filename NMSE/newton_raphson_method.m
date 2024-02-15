clc
clear all
close all

F = @(x) sin(x) + 3*x - 1;
Sol = fzero(F, [0,1])