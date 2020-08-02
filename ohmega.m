clc;
clear;
close all;
w=-pi:0.2:pi;
b=2;
a=3;
z=cos(w)+j*sin(w);
x=tan(w/2);
subplot(2,1,2)
plot(w,x);
ylabel("omega")
xlabel("w")

h=b./((2*((1-(z.^-1))./(1+(z.^-1))))+a);
subplot(2,2,2)
plot(w,h);
ylabel("h(z)")
xlabel("w")