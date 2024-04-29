% Task - 01
clc
close all
clear all

f1 = 5;
f2 = 10;
f3 = 15;

x1 = [1 0 1 0 1 1];
x2 = [0 1 0 1 0 0];
x3 = [1 1 1 0 0 1];

nx1 = size(x1,2);
nx2 = size(x2,2);
nx3 = size(x3,2);


figure
i = 1;
while i < nx1 + 1
    t = i:0.001:i+1;
    if x1(i)==1
        ask1=sin(2*pi*f1*t);
    else
        ask1=0;
    end
    subplot(2,1,1);
    plot(t,ask1);
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Amplitude Shift Key for Signal - 1')
    subplot(2, 1, 2);
    plot([i, i+1], [x1(i), x1(i)], 'r'); % plot x
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Digital Signal - 1')
    i=i+1;
end


figure
j = 1;
while j < nx2 + 1
    t = j:0.001:j+1;
    if x2(j)==1
        ask2=sin(2*pi*f2*t);
    else
        ask2=0;
    end
    subplot(2,1,1);
    plot(t,ask2);
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Amplitude Shift Key for Signal - 2')
    subplot(2, 1, 2);
    plot([j, j+1], [x2(j), x2(j)], 'r'); % plot x
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Digital Signal - 2')
    j=j+1;
end


figure
k = 1;
while k < nx3 + 1
    t = k:0.001:k+1;
    if x3(k)==1
        ask3=sin(2*pi*f3*t);
    else
        ask3=0;
    end
    subplot(2,1,1);
    plot(t,ask3);
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Amplitude Shift Key for Signal - 3')
    subplot(2, 1, 2);
    plot([k, k+1], [x3(k), x3(k)], 'r'); % plot x
    hold on;
    grid on;
    axis([1 6 -1.5 1.5]);
    title('Digital Signal - 3')
    k=k+1;
end