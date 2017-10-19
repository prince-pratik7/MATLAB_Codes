
%Write a matlab code to perform phase modulation and calculate the power.

close all;
clear all;
clc;
t=0:0.001:1;
vm=input('Enter the value of vm: ');
fm=input('Enter the value of fm: ');
vc=input('Enter the value of vc: ');
fc=input('Enter the value of fc: ');
mp=input('Enter the modulation index of pm: ');
m=vm*cos(2*pi*fm*t);
n=vc*cos(2*pi*fc*t);
subplot(3,1,1)
plot(t,m,'r')
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

subplot(3,1,2)
plot(t,n,'b')
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

%Phase MOdulation
spm=vc*cos((2*pi*fc*t)+mp.*cos(2*pi*fm*t));
subplot(3,1,3)
plot(t,spm,'black')
title('Phase Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on
