clc
clear all
close all

%22-46947-1
%AB-CDEFG-H
 
A1= 5;
A2 = 9;
s = (11/30);
 

fs = 20000;             % Sampling frequency 
f1 = 1100;              % Hz 
f2 = 1600;              % Hz
%Define signal 

t = 0: 1/fs: 1-1/fs; 

x = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) + s*randn(size(t)); 

signal = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) ; 

noise = s*randn(size(t)); 

noisySignal = signal + noise;   

SNR = snr(noisySignal)


subplot(211);
plot(t, signal)
title("Time vs Signal")
xlabel("Time")
ylabel("Signal")
axis([0 0.02 -15 15])

subplot(212);
plot(t, noisySignal)
title("time vs Noisy Signal")
xlabel("Time")
ylabel("Noisy signal")
axis([0 0.02 -15 15])
