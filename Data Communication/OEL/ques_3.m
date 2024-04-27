clc
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analog to Digital Conversion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_duration = 0.2;
%% Analog-like signal's representation
% Analog signal generation is not possible in MATLAB
a = [0.4 0.6 0.8]; % amplitude array for composite signal
f = [5 12 20]; % frequency array for composite signal
a1 = [0.7 0.8 0.10]; % amplitude array for composite signal
f1 = [5 12 20]; % frequency array for composite signal
a2 = [0.8 0.10 0.12]; % amplitude array for composite signal
f2 = [5 12 20]; % frequency array for composite signal
analog_t = 0:0.0001:time_duration;
analog_sig = a(1)*sin(2*pi*f(1)*analog_t) + a(2)*cos(2*pi*f(2)*analog_t) + a(3)*sin(2*pi*f(3)*analog_t + pi/4);
analog_sig1 = a1(1)*sin(2*pi*f1(1)*analog_t) + a1(2)*cos(2*pi*f1(2)*analog_t) + a1(3)*sin(2*pi*f1(3)*analog_t + pi/4);
analog_sig2 = a2(1)*sin(2*pi*f2(1)*analog_t) + a2(2)*cos(2*pi*f2(2)*analog_t) + a2(3)*sin(2*pi*f2(3)*analog_t + pi/4);
figure
subplot(1,2,1)
plot(analog_t, analog_sig,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')
figure
subplot(1,2,2)
plot(analog_t, analog_sig1,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')
figure
subplot(1,2,1)
plot(analog_t, analog_sig2,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')
%% Sampling Frequency
fs = 250;
ts = 1/fs;
%% Sampling
samp_t = 0:1/fs:time_duration;
samp_sig = a(1)*sin(2*pi*f(1)*samp_t) + a(2)*cos(2*pi*f(2)*samp_t) + a(3)*sin(2*pi*f(3)*samp_t + pi/4);
samp_sig1 = a1(1)*sin(2*pi*f1(1)*samp_t) + a1(2)*cos(2*pi*f1(2)*samp_t) + a1(3)*sin(2*pi*f1(3)*samp_t + pi/4);
samp_sig2 = a2(1)*sin(2*pi*f2(1)*samp_t) + a2(2)*cos(2*pi*f2(2)*samp_t) + a2(3)*sin(2*pi*f2(3)*samp_t + pi/4);
subplot(1,2,2)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])
subplot(1,2,1)
plot(samp_t, samp_sig1,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])
subplot(1,2,2)
plot(samp_t, samp_sig2,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])
%% Levels for Quantization
L = 8;
%% Quantizing
delta = (max(samp_sig) - min(samp_sig))/(L-1); % step size
quant_sig = min(samp_sig) + round((samp_sig - min(samp_sig))/delta)*delta; % quantized signal 
quant_sig1 = min(samp_sig1) + round((samp_sig1 - min(samp_sig1))/delta)*delta;
quant_sig2 = min(samp_sig2) + round((samp_sig2 - min(samp_sig2))/delta)*delta;
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
subplot(1,2,1)
plot(samp_t, samp_sig1,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('sampled signal')
subplot(1,2,2)
plot(samp_t, quant_sig1,'x','linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('quantized samples')
subplot(1,2,1)
plot(samp_t, samp_sig2,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('sampled signal')
subplot(1,2,2)
plot(samp_t, quant_sig2,'x','linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('quantized samples')
%% Number of Bits/Sample
nb = log2(L);
%% Encoding
i = round((samp_sig-min(samp_sig))/delta); % index for encoding
dig_data_matrix = de2bi(i,nb); % encoded binary bits are as a matrix here
dig_data = reshape(dig_data_matrix',1,[]);
i1 = round((samp_sig1-min(samp_sig1))/delta); % index for encoding
dig_data_matrix1 = de2bi(i1,nb); % encoded binary bits are as a matrix here
dig_data1 = reshape(dig_data_matrix1',1,[]);
i2 = round((samp_sig2-min(samp_sig2))/delta); % index for encoding
dig_data_matrix2 = de2bi(i2,nb); % encoded binary bits are as a matrix here
dig_data2 = reshape(dig_data_matrix2',1,[]);% encoded binary bits are as an array here
disp(['The index values for encoding from quantization of the sampled signal are: ',num2str(i)])
disp(['The converted bits from the input analog signal are:',num2str(dig_data)])
disp(['The index values for encoding from quantization of the sampled signal are: ',num2str(i1)])
disp(['The converted bits from the input analog signal are:',num2str(dig_data1)])
disp(['The index values for encoding from quantization of the sampled signal are: ',num2str(i2)])
disp(['The converted bits from the input analog signal are:',num2str(dig_data2)])
