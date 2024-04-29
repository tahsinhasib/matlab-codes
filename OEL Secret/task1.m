%XX representation of transmitting binary information as digital signal XXX
x1 = [1 0 1 0 1 1];
x2 = [0 1 0 1 0 0];
x3 = [1 1 1 0 0 1];

bit1 = []; 
bp1 = 1; 
for n=1:1:length(x1)
    if x1(n) == 1;
        se = 3*ones(1,100);
    else
        x1(n) == 0;
        se = zeros(1,100);
    end
    bit1 = [bit1 se];
end

t1 = bp1/100:bp1/100:100*length(x1)*(bp/100);

figure
subplot(2,1,1);
plot(t1, bit1,'lineWidth',2.5);
grid on;
axis([ -2 8 -5 5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Digital Signal - 1');


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
subplot(2,1,2);
plot(t3, ask1);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('ASK Modulation of Signal - 1');

% a = bp*length(x)


% Second Signal


bit2 = []; 
bp2 = 1; 
for n=1:1:length(x2)
    if x2(n) == 1;
        se = 3*ones(1,100);
    else
        x2(n) == 0;
        se = zeros(1,100);
    end
    bit2 = [bit2 se];
end

t4 = bp2/100:bp2/100:100*length(x2)*(bp2/100);

figure
subplot(2,1,1);
plot(t4, bit2,'lineWidth',2.5);
grid on;
axis([ -2 8 -5 5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Digital Signal - 2');

A1 = 3; % Amplitude of carrier signal for information 1
A2 = 0; % Amplitude of carrier signal for information 0
br2 = 1/bp2; 
% bit rate
f2 = br2*4; % carrier frequency 
t5 = bp2/99:bp2/99:bp2; 
ss = length(t5);
ask2=[];
for i=1:1:length(x2)
    if (x2(i)==1)
        y = A1*sin(2*pi*f2*t2);
    else
        y = A2*sin(2*pi*f2*t2);
    end
    ask2 = [ask2 y];
end

t6 = bp2/99:bp2/99:bp2*length(x2);
subplot(2,1,2);
plot(t6, ask2);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('ASK Modulation of Signal - 2');



% Third Signal
bit3 = []; 
bp3 = 1; 
for n=1:1:length(x3)
    if x3(n) == 1;
        se = 3*ones(1,100);
    else
        x3(n) == 0;
        se = zeros(1,100);
    end
    bit3 = [bit3 se];
end

t7 = bp3/100:bp3/100:100*length(x1)*(bp/100);

figure
subplot(2,1,1);
plot(t7, bit3,'lineWidth',2.5);
grid on;
axis([ -2 8 -5 5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Digital Signal - 3');


A1 = 3; % Amplitude of carrier signal for information 1
A2 = 0; % Amplitude of carrier signal for information 0
br3 = 1/bp3; 
% bit rate
f3 = br3*5; % carrier frequency 
t8 = bp3/99:bp3/99:bp3; 
ss = length(t8);
ask3=[];
for i=1:1:length(x3)
    if (x3(i)==1)
        y = A1*sin(2*pi*f3*t8);
    else
        y = A2*sin(2*pi*f3*t8);
    end
    ask3=[ask3 y];
end

t9 = bp3/99:bp3/99:bp3*length(x3);
subplot(2,1,2);
plot(t9, ask3);
axis([-2 8 -5 5]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('ASK Modulation of Signal - 3');



