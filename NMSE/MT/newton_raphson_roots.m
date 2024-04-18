clc
clear all
close all

F=@(x,y) [x.^2+y-1; y.^3-2*x+4];
J=@(x,y)[2*x,  1;  -2,  3*y.^2];
x(1)=1.4;
y(1)=-1;
for n=1:4
    Xn=[x(n); y(n)];
    Fn=F(x(n), y(n));
    Jn=J(x(n), y(n));
    Xn1=Xn-Jn\Fn;
    x(n+1)=Xn1(1);
    y(n+1)=Xn1(2);
end


Roots=[x',y']
