clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
t=0:.001:1; % For setting the sampling interval
fc=20;('Enter frequency of Carrier Sine wave: ');
fm=5;('Enter Message frequency : ');
amp=5;('Enter Carrier & Message Amplitude(Assuming Both Equal):');
c=amp.*sin(2*pi*fc*t);% Generating Carrier Sine
subplot(3,1,1) %For Plotting The Carrier wave
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier')
m=square(2*pi*fm*t);% For Plotting Message signal
subplot(3,1,2)
plot(t,m,'linewidth',2,'color','r')
xlabel('time')
ylabel('ampmplitude')
title('Message Signal')% Sine wave multiplied with square wave in order to generate PSK
x=c.*m;
subplot(3,1,3) % For Plotting PSK (Phase Shift Keyed) signal
plot(t,x)
xlabel('t')
ylabel('y')
title('PSK')