%1.	Plot SSB-SC taking modulation inputs as:
%Amplitude of Carrier Signal (Ac)
%Amplitude of Message Signal (Am)
%Frequency of Carrier Signal (Fc)
%Frequency of Message Signal (Fm)
%Also, calculate powers Pc, m and PSSBSC

	
clc;
clf;
close all;
clear all;
t=0:0.001:1;
%Message and carrier signal
vm=input('Enter the value of Vm:');
fm=input('Enter the value of fm:');
vc=input('Enter the value of vc:');
fc=input('Enter the value of fc:');
%vm=5;
%fm=50;
%vc=5;
%fc=100;
m=vm*cos(2*pi*fm*t);
n=vc*cos(2*pi*fc*t);

subplot(5,1,1)
plot(t,m,'r')
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

subplot(5,1,2)
plot(t,n,'b')
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on

%Hilbert transformation of message signal
o=vm*sin(2*pi*fm*t);

subplot(5,1,3)
plot(t,o,'black')
title('Hilbert transformation of message signal');
xlabel('Time');
ylabel('Amplitude');
grid on



%SSB-USB
y=m.*cos(2*pi*fc*t)-o.*sin(2*pi*fc*t);

subplot(5,1,4)
plot(t,y,'m')
title('SSB-USB');
xlabel('Time');
ylabel('Amplitude');
grid on

%SSB-LSB
l=m.*cos(2*pi*fc*t)+o.*sin(2*pi*fc*t);

subplot(5,1,5)
plot(t,l,'g')
title('SSB-LSB');
xlabel('Time');
ylabel('Amplitude');
grid on

M=vm/vc;
Pc=(vc*vc)/2;
P_ssbsc=(M*M*Pc)/4;
fprintf('Modulation Index: %f\n',M);
fprintf('Power of Carrier Signal: %f\n',Pc);
fprintf('Power of SSB-SC: %f\n',P_ssbsc);
