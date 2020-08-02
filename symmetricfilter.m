clc;
clear;
close all;

w=-pi:0.2:pi;
z=cos(w)+j.*sin(w);
M=10;
n=-10:10;

#m=even and symmetric
subplot(2,2,1)
zplane([0.5,0.5,0.5],[0,0,1]);

#m=odd and symmetric
subplot(2,2,2)
zplane([0,0.5,0.5],[0,0,1]);

#m=even and antisymmetric
subplot(2,2,3)
zplane([-0.5,0,0.5],[0,0,1]);

#m=odd and antisymmetric
subplot(2,2,4)
zplane([-0.5,0.5],[0,1]);

