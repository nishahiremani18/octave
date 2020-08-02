clc;
clear;
close all;
fs=44100;
y=audioread("dil.wav");
x=audioread("dil.wav");
c1=5*y(1:10000,1);
c2=x(10000,1);
noise=x+c2;
n=(fft(noise));
h=[-1/2,1/2];
z=conv(n,h);
subplot(3,1,1)
plot(x);
ylabel("magnitude")
title("original signal")

subplot(3,1,2)
plot(noise);
ylabel("magnitude")
title("noise signal")

subplot(3,1,3)
plot(y1);
ylabel("magnitude")
title("filtered signal")
sound(y,fs);

