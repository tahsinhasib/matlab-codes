%XX representation of transmitting binary information as digital signal XXX
x1 = [1 0 1 0 1 1];
x2 = [0 1 0 1 0 0];
x3 = [1 1 1 0 0 1];

bit = []; 
bp = 1; 

A1 = 3; % Amplitude of carrier signal for information 1
A2 = 0; % Amplitude of carrier signal for information 0
br1 = 1/bp1; 
% bit rate
f1 = br1*3; % carrier frequency 
t2 = bp1/99:bp1/99:bp1; 
ss = length(t2);
ask1=[];
for i=1:1:length(x1)
    if (x1(i)==1)
        y = A1*sin(2*pi*f1*t2);
    else
        y = A2*sin(2*pi*f1*t2);
    end
    ask1=[ask1 y];
end

t3 = bp1/99:bp1/99:bp1*length(x1);
subplot(3,1,1);
plot(t3, ask1);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('ASK Modulation of Signal - 1');

%XXXXXXXXXXXXXXXXXXXXXXX Binary-ASK modulation XXXXXXXXXXXXXXXXXXXXXXXXXXX%
A1 = 3; % Amplitude of carrier signal for information 1
A2 = 0; % Amplitude of carrier signal for information 0
br = 1/bp; 
% bit rate
f1 = br*4000; % carrier frequency 
t2 = bp/99:bp/99:bp; 
ss = length(t2);
c1=[];
for i=1:1:length(x1)
    if (x1(i)==1)
        y = A1*sin(2*pi*f1*t2);
    else
        y = A1*sin(2*pi*f1*t2);
    end
    c1=[c1 y];
end

t3 = bp/99:bp/99:bp*length(x1);
subplot(3,1,2);
plot(t3, c1);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('Modulated Signal at Transmitter');

% a = bp*length(x)


% Second Signal

new_sig = (ask1).*c1;
subplot(3,1,3);
plot(t3, new_sig);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('Modulated Signal at Transmitter');