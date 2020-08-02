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
title("hanning window")
grid on;

#ideal filter
h=(sin(w*n)./(pi*n));
h(n==0)=0.2;
h1=fftshift(fft(h));
subplot(4,1,2)
plot(n,abs(h1));
title("ideal filter")
grid on;

#desired filter
y=(W.*h);
#x=fftshift(fft(y));
subplot(4,1,3)
plot(n,abs(y));
title("truncated filter")
grid on;

#shifting
a=(sin(w*(n-25))./(pi.*(n-25)));
a(n==25)=0.2;
subplot(4,1,4);
plot(n,abs(a));
title("shifted filter")
grid on;