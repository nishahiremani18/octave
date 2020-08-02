clc;
clear;
close all;
n= 0:0.2:10;
w=-pi:0.2:pi;
a=2;
z=cos(w)+j.*sin(w);
h=1+0.5*(z.^-1);
x=0.5+(z.^-1);
subplot(2,2,1);
plot(w,abs(h));

subplot(2,2,2);
plot(w,angle(h));

subplot(2,2,3);
plot(w,abs(x));

subplot(2,2,4);
plot(w,angle(x));