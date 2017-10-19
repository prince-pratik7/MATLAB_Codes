%Plot a sine wave, its discrete form using stem(), a cos wave and its discrete form using stem(). Give the title of the graph, titles on the axes and show the grids. 
%Plot the 4 graphs together using subplot(). 

	
clc;
clear all;
close all;
clf;
 		t=0:0.01:1;
vm=input('Enter the value of vm:');
fm=input('Enter the value of fm:');

m=vm*sin(2*pi*fm*t);
whitebg('w');
subplot(2,2,1)
stem(t,m,'r')
title('Sine Wave')
xlabel('time')
ylabel('amplitude')
grid on
 		subplot(2,2,2)
plot(t,m,'r')
title('Sine Wave')
xlabel('time')
ylabel('amplitude')
grid on
  
n=vm*cos(2*pi*fm*t);
 		subplot(2,2,3)
stem(t,n,'k')
title('Cosine wave')
xlabel('time')
ylabel('amplitude')
grid on
 		subplot(2,2,4)
plot(t,n,'k')
title('Cosine Wave')
xlabel('time')
ylabel('amplitude')
grid on

