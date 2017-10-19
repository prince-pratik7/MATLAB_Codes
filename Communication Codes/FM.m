%Write a MATLAB code to perform frequencymodulation (FM) and calculate the power.

close all;
clear all;
clc;
t=0:0.001:1;
vm=input('Enter the value of vm: ');
fm=input('Enter the value of fm: ');
vc=input('Enter the value of vc: ');
fc=input('Enter the value of fc: ');
mf=input('Enter the modulation index of fm: ');

m=vm*cos(2*pi*fm*t);
n=vc*cos(2*pi*fc*t);

subplot(4,1,1)
plot(t,m,'r')
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

subplot(4,1,2)
plot(t,n,'b')
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

%Frequency Modulation

sfm=vc*cos((2*pi*fc*t)+mf.*sin(2*pi*fm*t));

subplot(4,1,3)
plot(t,sfm,'g')
title('Frequency Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on
