%3.	(a) Plot a message signal, a carrier signal and the final modulated signal by taking 3 inputs of 
%	Message amplitude 
%	Message frequency 
%	Carrier amplitude 
%	Carrier frequency 
%(b) Make Ac=Am (critically modulated)
%Make Ac<Am (over modulated)
%Make Ac>Am (under modulated)
%Plot the 3 graphs together using subplot(). Give titles to the graph and the axes.




clc;
clf;
close all;
clear all;
t=0:0.01:1;
vm=10;
fm=5;
vc=10;
fc=50;

M=vm/vc;
s=vc*cos(2*pi*fc*t)+((M*vc)/2)*(cos((2*pi*fc*t)+(2*pi*fm*t)))+((M*vc)/2)*(cos((2*pi*fc*t)-(2*pi*fm*t)));

subplot(3,1,1)
plot(t,s,'r')
title('Am=Ac (Critically Modulated)');
xlabel('time');
ylabel('amplitude');
grid on

vm=10;
fm=5;
vc=3;
fc=50;

M=vm/vc;
s=vc*cos(2*pi*fc*t)+((M*vc)/2)*(cos((2*pi*fc*t)+(2*pi*fm*t)))+((M*vc)/2)*(cos((2*pi*fc*t)-(2*pi*fm*t)));

subplot(3,1,2)
plot(t,s,'g')
title('Am>Ac (Over modulation)');
xlabel('time');
ylabel('amplitude');
grid on
	
vm=3;
fm=5;
vc=10;
fc=50;

M=vm/vc;
s=vc*cos(2*pi*fc*t)+((M*vc)/2)*(cos((2*pi*fc*t)+(2*pi*fm*t)))+((M*vc)/2)*(cos((2*pi*fc*t)-(2*pi*fm*t)));




subplot(3,1,3)
plot(t,s,'b')
title('Am<Ac (Under modulation)');
xlabel('time');
ylabel('amplitude');
grid on
