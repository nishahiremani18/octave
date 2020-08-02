clc ; 
clear ; 
close all ;
l=51;  #order M=50
w=pi/5;

n=-25:25;
#hanning window
W=(0.5+0.5*cos((2*pi.*n)./50));
subplot(4,1,1)
plot(n,abs(W));
grid on;

#ideal filter
h=((sin(w.*n))./(pi.*n));
h(n==0)=0.2;
subplot(4,1,2)
stem(n,abs(h));
grid on;

#desired filter
y=(W.*h);
x=fft(y)
subplot(4,1,3)
plot(n,abs(x));
#hold on;

#shifting
a=(sin(w*(n-25))./(pi.*(n-25)));
subplot(4,1,4);
plot(n,abs(a));
#hold on;