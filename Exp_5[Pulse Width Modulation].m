%Pulse width Modulation
clc;
close all;
clear;

fm = 2;
fs = 10;
a =2;
t = 0:0.0001:1;

%message signal
msg = a.*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,msg);
title('Message signal');
grid on;

%carrier signal(sawtooth signal)
stooth=1.01*a.*sawtooth(2*pi*fs*t);
subplot(3,1,2);
%plot(t,msg);
hold on;
plot(t,stooth);
title('Pulse carrier wave');

%plotting thr pulse width modulation
for i =1:length(stooth)
    if(msg(i)>=stooth(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end

subplot(3,1,3);
plot(t,pwm,'r');
title('PWM');
axis([0 1 0 1.1]);
grid on;