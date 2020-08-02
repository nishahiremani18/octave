clc ; 
clear ; 
close all ;
l=51;  #order M=50
w=pi/2;

n=-25:25; 
#ideal filter
h=(sin(w*n)./(pi*n));
h(n==0)=0.5;
h1=fftshift(fft(h));
plot(n,abs(h1),';idealfilter;');
hold on;
ylabel('|H(w)|')
xlabel('w')

#hanning
W=(0.5+0.5*cos((2*pi.*n)./50));
plot(n,abs(W),';hanning;');
hold on;

#hamming
W1=(0.5+0.46*cos((2*pi.*n)./50));
plot(n,abs(W1),';hamming;');
hold on;


#bartlett
W3=(1-((2*abs(n)./50)));
plot(n,abs(W3),';bartlet;');
hold on;

#blackman
W4=(0.42+0.5*cos((2*pi.*n)./50)+0.08*cos((4*pi.*n)./50));
plot(n,abs(W4),';blackman;');
hold on;