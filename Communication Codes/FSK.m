
%STUDY OF FREQUENCY SHIFT KEYING(FSK) MODULATION AND DEMODULATION

close all;
clear all;
clf;
fc=20;
fc1=5;
n=[1 0 1 0 1];
l=length(n);
if n(l)==1
    n(l+1)=1;
else
    n(l+1)=0;
end
tn=0:l;
subplot(5,1,1)
stairs(tn,n,'g');
xlabel('Time(s)');
ylabel('Amplitude(v');
title('Message Signal');
grid on;


%Carrier Generation

t=0:0.01:l;
c1=sin(2*pi*fc*t);
subplot(5,1,2);
plot(t,c1,'r');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('Carrier Signal');
grid on;

t=0:0.01:l;
c2=sin(2*pi*fc1*t);
subplot(5,1,3);
plot(t,c2,'r');
xlabel('Time(s)');
ylabel('Amplitude(v)');

title('Carrier Signal');
grid on;


%FSK Modulated Signal Generation

for i=1:l
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c1(j+1);
        else
            s(j+1)=c2(j+1);
        end
    end
end

subplot(5,1,4);
plot(t,s,'b');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('FSK modulated Signal');
grid on;

%FSK demodulated Signal generation
for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c1(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end
subplot(5,1,5);
plot(t,x,'g');
xlabel('Time(s)');
ylabel('Amplitude(v)');
title('FSK Demodulated Signal');
gridon;
