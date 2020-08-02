clc ; 
clear ; 
close all ;
W=-pi:0.2:pi;
w=pi/2;
w1=pi/5;
w2=pi/2;

n=-200:200; 
l=3;
m=2;
N=-1:1;
h=(sin(w.*n))./(pi.*n);
H=((-1).^n).*h;
zplane(0.5,H);
