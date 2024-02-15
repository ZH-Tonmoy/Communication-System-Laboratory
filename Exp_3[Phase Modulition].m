%phase modulation
clc;
close all;
clear;

%input
Am = 2;%message signal amplitude
Ac = Am*2;%carrier signal amplitude
fm = 5;%message frequency (fm<fc)
fc = fm*10;%carrier frequency
m = 10; %modulation index(m <= 1)
t = 0:0.001:1;

%Equation of the message signal
phase_m = pi/3;
y1 = Am*cos(2*pi*fm*t+phase_m);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',1);

%carrier
phase_c = 2*pi/6;
y2 = Ac*cos(2*pi*fc*t+phase_c);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',1);


%instantaneous voltage of resulting
y = Ac*cos(2*pi*fc*t+m.*cos(2*pi*fm*t+phase_m));
subplot(3,1,3);
plot(t,y,'red','LineWidth',1);

%fprintf('Mudulation index: %.2f',vm/vc);
% 2 4 5 100 6
