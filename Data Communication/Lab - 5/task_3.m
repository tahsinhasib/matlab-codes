clc 
clear all 
close all 

% 22-47006-1
% AB-CDEFG-H
a1= 1;
a2= 3;
a3= 2;
a4= 4;
f1= 11;
f2= 13;
f3= 7;
f4= 8;
% sig = a1*sin(2*pi*f1*t) + a2*cos(2*pi*f2*t) + a3*sin(2*pi*f3*t) + a4*sin(2*pi*f4*t); 
% [a1 = F + 1, a2 = F + 3, a3 = F + 2, a4 = F + 4, f1 = G + 5, f2 = G + 7, f3 = G + 1, f4 = G + 2]

time_duration = 0.2;

a = [0.4 0.6 0.8]; 
f = [5 12 20];
analog_t = 0:0.0001:time_duration;
analog_sig = a1*sin(2*pi*f1*analog_t) + 12*cos(2*pi*f2*analog_t) + 7*sin(a3*pi*f3*analog_t) + a4*sin (2*pi*f4*analog_t);
figure
subplot(121)
plot(analog_t, analog_sig,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')
%% Sampling Frequency
fs = 250;
ts = 1/fs;

%% Sampling
samp_t = 0:1/fs:time_duration;
samp_sig = a1*sin(2*pi*f1*samp_t) + 12*cos(2*pi*f2*samp_t) + 7*sin(a3*pi*f3*samp_t) + a4*sin (2*pi*f4*samp_t);
subplot(122)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])

%% Levels for Quantization
L = 8;

delta = (max(samp_sig) - min(samp_sig))/(L-1); % step size
quant_sig = min(samp_sig) + round((samp_sig - min(samp_sig))/delta)*delta; % quantized signal
figure
subplot(1,2,1)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('sampled signal')
subplot(1,2,2)
plot(samp_t, quant_sig,'x','linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('quantized samples')

%% Number of Bits/Sample
nb = log2(L);
%% Encoding
% SNRdb = 25;

% nb = (SNRdb - 1.76)/6.02);
% L = ceil(2^nb)



i = round((samp_sig-min(samp_sig))/delta); 
dig_data_matrix = de2bi(i,nb); 
dig_data = reshape(dig_data_matrix',1,[]); 
disp(['The index values for encoding from quantization of the sampled signal are: ',num2str(i)])
disp(['The converted bits from the input analog signal are: ',num2str(dig_data)])