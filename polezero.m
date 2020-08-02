clear;
close all;
w=-pi:0.2:pi;
z=(cos(w)+j.*sin(w));
x=1./((e.^j.*w)+0.5);
x1=1./((e.^j.*w)+0.8);
x2=1./((e.^j.*w)+1);
x3=1./((e.^j.*w)+2);

subplot(2,2,1)
plot(w,abs(x));

subplot(2,2,2)
plot(w,abs(x1));

subplot(2,2,3)
plot(w,abs(x2));

subplot(2,2,4)
plot(w,abs(x3));


