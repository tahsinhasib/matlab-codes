clc
clear all
close all

% 1 2 3
% 8 6 4
% 3 6 9
% The elements of a matrix must be entered one-by-one in a list where the elements of a row be separated with commas or blank spaces and the rows are divided by semicolons.
A = [1 2 3; 8 6 4; 3 6 9]


% Addressing an element of a matrix is also very easy. The n-th element of the m-th column in 3 + 8 + 6 = 17 matrix A from above is A(n,m). 
A(1,3) + A(2,1) + A(3,2)

% The k-th to l-th elements of the m-th to n-th columns can be addressed by A(k:l,m:n)
A(2:3,1:2)

% addresses the first two elements of the first row
A(1,1:2)

% "linspace(first value, last value, number of values)"
x = linspace(0, 1, 10)
x = linspace(1, 10, 10)

% (first value: increment: last value)
v = (0: 1: 9)
v = (10: -2: 0)
w = (5: 10)

% generate basic matrices: zeros, ones, rand and randn. 
B = zeros(3,4)

C = ones(2,5)
C = ones(2,5)*6

% generates uniformly distributed random elements
D = rand(1,5)

% generates normally -also called Gaussian- distributed random elements
E = randn(3,3)

% To delete rows or columns of a matrix, just use a pair of square brackets

A(2,:) = [ ]

% Transposing matrix

a = 0:3
b = a'

% Plotting in graph

x = 0: pi/100: 2*pi;
y = sin(x);
plot(x, y, '--b')
xlabel('x');
ylabel('y');
title('y = sin(x)')

% y1 = sin(x);
% y2 = sin(x - 0.25);
% y3 = sin(x - 0.5);
% plot(x,y1,x,y2,x,y3)
% xlabel('x');
% ylabel('y');
% title('y = sin(x)')


% For example, the statement plot(x1,y1,’b:*’)

% Controlling axis " axis([xmin xmax ymin ymax]) "


t = -pi:pi/100:pi;
s = cos(t);
plot(t,s)
axis([-pi pi -1 1])
xlabel(’-\pi \leq t \leq \pi’)
ylabel('cos(t)’)
title('The cosine function')
text(-2, -0.5, 'This is a note at position (-2, -0.5)')

