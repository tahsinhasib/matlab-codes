% Plotting the Original Analog Signal and Demodulated Signal

% Original Analog Signal
t_analog = 0:0.01:length(x1)-0.01;
analog_signal = [];
for i = 1:length(x1)
    if x1(i) == 1
        analog_signal = [analog_signal 3*ones(1,100)];
    else
        analog_signal = [analog_signal zeros(1,100)];
    end
end

% Demodulated Signal
t_demodulated = bp1/99:bp1:length(comp_sig)*bp1;
demodulated_signal = zeros(1,length(t_demodulated));
for i = 1:length(x1)
    % Extracting the received signal corresponding to the current bit
    received_signal = comp_sig((i-1)*ss+1:i*ss);
    
    % Demodulation: multiply by carrier
    demodulated_signal((i-1)*ss+1:i*ss) = received_signal .* c1((i-1)*ss+1:i*ss);
    
    % Low-pass filtering
    demodulated_signal((i-1)*ss+1:i*ss) = filter(b, a, demodulated_signal((i-1)*ss+1:i*ss));
end

% Plotting
figure;
subplot(2,1,1);
plot(t_analog, analog_signal, 'LineWidth', 2.5);
grid on;
axis([0 t_analog(end) -5 5]);
ylabel('Amplitude (volt)');
xlabel('Time (sec)');
title('Original Analog Signal');

subplot(2,1,2);
plot(t_demodulated, demodulated_signal, 'LineWidth', 2.5);
grid on;
axis([0 t_demodulated(end) -5 5]);
ylabel('Amplitude (volt)');
xlabel('Time (sec)');
title('Demodulated Signal');

% Adding legend
legend('Demodulated Signal');
