clc
clear all
close all

% 22-46947-1
% AB-CDEFG-H
 
A1= 5;
A2 = 9;
s = (11/30);
 


fs = 20000;             % Sampling frequency 
f1 = 1100;              % Hz 
f2 = 1600;              % Hz

t = 0: 1/fs: 1-1/fs; 


x = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) + s*randn(size(t)); 

signal = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) ; 

noise = s*randn(size(t)); 

noisySignal = signal + noise;   

SNR_db = snr(noisySignal) 
SNR=10^(SNR_db/10)

bandwidth = obw(x, fs)
C =  bandwidth*log2(1+SNR)


N = 0.8 * C
y = N / (2 * bandwidth);
L = ceil(2^y)