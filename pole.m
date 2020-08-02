clc;
clear;
close all;
[A,B]=meshgrid(0:.1:2*pi);
w=-pi:.1:pi;
#if a is complex
x=1./((e.^j.*w)-0.5);
x1=1./((e.^j.*w)-0.5*(e.^j.*pi./2));
x2=1./((e.^j.*w)-0.5*(e.^j.*pi));
x3=1./((e.^j.*w)-0.5*(e.^j.*(3*pi./2)));

subplot(2,2,1)
plot(w,abs(x));

subplot(2,2,2)
plot(w,abs(x1));

subplot(2,2,3)
plot(w,abs(x2));

subplot(2,2,4)
plot(w,abs(x3));

