clc ; 
clear ; 
close all ;
W=-pi:0.2:pi;
w=pi/2;
w1=pi/5;
w2=pi/2;

n=-200:200; 
#ideal
h=((sin(w.*n))./(pi.*n));
h(n==0)=0.5;
H=fftshift(fft(h));
subplot(2,2,1)
plot(n,abs(H));
grid on;

#high pass filter
h1=((-1).^n).*h;
h1(n==0)=0.5;
h2=fftshift(fft(h1));
subplot(2,2,2)
plot(n,abs(h2));
grid on;

#bandpass filter
a=(sin(w2*n)-sin(w1*n));
h3=(a./(pi.*n));
h3(n==0)=3/10;
h4=fftshift(fft(h3));
subplot(2,2,3)
plot(n,abs(h4));
grid on;

#band reject
b=(sin(w1*n)-sin(w2*n));
h5=b./(pi.*n);
h5(n==0)=13/10;
h6=fftshift(fft(h5));
subplot(2,2,4)
plot(n,abs(h6));
grid on;

