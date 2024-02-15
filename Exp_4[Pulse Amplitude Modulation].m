%Pulse Amplitude Modulation (Natural PAM)
clc;
close all;
clear all;

t = 0:0.01:5;
d = 0:1/5:5;
fm = 1;

%Message signal
x = 5*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,x);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

%Pulse Carrier
y = pulstran(t,d,'rectpuls',0.1);
subplot(3,1,2);
plot(t,y);
title('Pulse Carrier');
xlabel('Time');
ylabel('Amplitude');
grid on;

%PAM output
z = x.*y;
subplot(3,1,3);
plot(t,z);
title('PAM modulation(Natural PAM)');
xlabel('Time');
ylabel('Amplitude');
grid on;