%1.	Plot a de-modulation wave taking modulation inputs as:
%Amplitude of carrier signal (Ac)
%Amplitude of message signal (Am)
%Frequency of carrier signal (Fc)
%Frequency of message signal (Fm)
%Also, calculate powers Pc, m, Pt and PDSBSC

clc;
clf;
close all;
clear all;
t=0:0.001:1;
%Message and carrier signal
%vm=input('Enter the value of Vm:');
%fm=input('Enter the value of fm:');
%vc=input('Enter the value of vc:');
%fc=input('Enter the value of fc:');
vm=5;
fm=10;
vc=5;
fc=100;
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
%DSB-SC Modulated Signal
s=m.*cos(2*pi*fc*t);
subplot(5,1,3)
plot(t,s,'g')
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on
%demodulation without filtering
k=s.*cos(2*pi*fc*t);
%k=0.5*m.*(1+(cos(2*(2*pi*fc*t))));
subplot(5,1,4)
plot(t,k,'c')
title('deModulated Signal without Filtering');
xlabel('Time');
ylabel('Amplitude');
grid on
%demodulation with filtering
l=0.5*m;
subplot(5,1,5)
plot(t,l,'r')
title('deModulated Signal with Filtering');
xlabel('Time');
ylabel('Amplitude');
grid on
M=vm/vc;
Pc=(vc*vc)/2;
P_dsbsc=(M*M*Pc)/2;
pt=(1+(M*M/2.0))*Pc;
fprintf('Modulation Index: %f\n',M);
fprintf('Power of Carrier Signal: %f\n',Pc);
fprintf('Power of Transmitted Signal: %f\n',pt);
fprintf('Power of DSB-SC: %f\n',P_dsbsc);
