
%STUDY OF AMPLITUDE SHIFT KEYING (ASK) MODULATION AND DEMODULATION


close all;
clear all;
clf;
fc=20;
n=[1 1 0 1 1];
l=length(n);
if n(l)==1
    n(l+1)=1;
else
    n(l+1)=0;
end
tn=0:l;
subplot(4,1,1)
stairs(tn,n,'g');
xlabel('Time(s)');
ylabel('Amplitude(v');
title('Message Signal');

%Carrier Generation

t=0:0.01:l;
c=sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,c,'r');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('Carrier Signal');
grid on;

%ASK Modulated Signal Generation

for i=1:l
for j=(i-1)*100:i*100
if(n(i)==1)
            s(j+1)=c(j+1);
else
            s(j+1)=0;
end
end
end

subplot(4,1,3);
plot(t,s,'b');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('ASK modulated Signal');
grid on;

%ASK demodulated Signal generation

for i=1:l
for j=(i-1)*100:i*100
if(s(j+1)==c(j+1))
            x(j+1)=1;
else
            x(j+1)=0;
end
end
end
subplot(4,1,4);
plot(t,x,'g');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('ASK Demodulated Signal');
grid on;
