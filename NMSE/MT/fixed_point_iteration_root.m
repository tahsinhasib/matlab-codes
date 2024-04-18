clc
clear all
close all

x(1)=0.9;
y(1)=-1;
for n=1:4
    x(n+1)=(x(n)^2-y(n)+3)/5;
    y(n+1)=(x(n)^2+4*y(n)^2-4+10*y(n))/10;
end

Iterative_Roots = [x',y']
