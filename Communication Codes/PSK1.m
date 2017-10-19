
%A.	Phase Shift Keying using Randomised Inputs.


close all;
clear all;
clf;
fc=2;
f=input('Enter the number of bits:');
n=round(rand(1,f));  
l=length(n);
if n(l)==1
n(l+1)=1;
else
n(l+1)=0;
end
tn=0:l;
subplot(4,1,1)
stairs(tn,n,'r');
xlabel('Time(s)');
ylabel('Amplitude(v');
title('Message Signal');

%Carrier Generation
t=0:0.01:l;
c1=sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,c1,'g');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('Carrier Signal');
grid on;

%PSK Modulated Signal Generation
for i=1:l
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c1(j+1);
        else
            s(j+1)=-c1(j+1);
        end
    end
end

subplot(4,1,3);
plot(t,s,'b');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('PSK modulated Signal');
grid on;

%PSK demodulated Signal generation

for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c1(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end
subplot(4,1,4);
plot(t,x,'r');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('PSK Demodulated Signal');
grid on;
