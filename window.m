clc ; 
clear ; 
close all ;
l=51;  #order M=l-1=50
w=pi/2;
n=-25:25; 

h=(sin(w*n)./(pi*n));
h(n==0)=0.5;
subplot(4,1,1)
stem(n,(h));
title("ideal filter")

#rectangular window W=1
W=(0.5+0.5*cos((2*pi.*n)));
subplot(4,1,2)
stem(n,(W));
title("rectangular window")

#truncation filter
y=(W.*h);
x=fft(y);
subplot(4,1,3)
stem(n,(y));
title("truncation filter")

#shifting
a=(sin(w*(n-25))./(pi.*(n-25)));
subplot(4,1,4);
stem(n,abs(a));
title("shifting")