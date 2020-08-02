clc;
clear;
close all;
[A,B]=meshgrid(0:.1:2*pi);
w=-pi:0.1:pi;
z=(cos(w)+j.*sin(w));
a=0.5;
x=z./(z-0.5);
x1=(z-0.3)./(z-a);
x2=(z-0.5)./(z-a);
x3=(z-1)./(z-a);
subplot(4,1,1)
plot(w,abs(x));

subplot(4,1,2)
plot(w,abs(x1));

subplot(4,1,3)
plot(w,abs(x2));

subplot(4,1,4)
plot(w,abs(x3));
