clc;
close all;
clear;

%input
Am = 5;%Message signal amplitude
Ac = Am.*2;%Carrier signal amplitude
fm = 5;%message frequency (fm<fc)
fc = fm.*10;%carrier frequency
m = 10;%modulation index  %m <= 1
t = 0:0.001:1;

%Equation of the message signal
y1 = Am.*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',2);

%Equation of the carrier signal
y2 = Ac.*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',2);


%instantaneous voltage of resulting
y = Ac.*cos(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,y,'red','LineWidth',2);

%printf('Mudulation index: %.2f',module);
%input 2 4 5 100 10
