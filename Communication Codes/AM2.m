%2.	Plot a message signal, a carrier signal and the final modulated signal by taking input of 

%	Message amplitude(Am) 
%	Message frequency(Fm) 

%	Carrier amplitude(Ac) 
%	Carrier frequency(Fc) 
%   Plot the 3 graphs together using subplot().
	

clc;
clf;
close all;
clear all;
t=0:0.01:1;
vm=input('Enter the value of vm: ');
fm=input('Enter the value of fm: ');
vc=input('Enter the value of vc: ');
fc=input('Enter the value of fc: ');
m=vm*cos(2*pi*fm*t);
n=vc*cos(2*pi*fc*t);

subplot(3,1,1)
plot(t,m,'r')
title('Message signal');
xlabel('time');
ylabel('amplitude');
grid on


subplot(3,1,2)
plot(t,n,'b')
title('Carrier signal');
xlabel('time');
ylabel('amplitude');
grid on

M=vm/vc;
s=vc*cos(2*pi*fc*t)+((M*vc)/2)*(cos((2*pi*fc*t)+(2*pi*fm*t)))+((M*vc)/2)*(cos((2*pi*fc*t)-(2*pi*fm*t)));

subplot(3,1,3)
plot(t,s,'g')
title('Amplitude modulated signal');
xlabel('time');
ylabel('amplitude');
grid on
