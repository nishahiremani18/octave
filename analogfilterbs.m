clc;
close all;
clear;
fs=0:500;
wp=2*pi.*150/1000;
ws=2*pi.*100/1000;
Ap=15;
As=1;
N=6;
k=0:N-1;
wc=(wp+ws)/2;
[N,wc]:buttord(wp,ws,Ap,As);
[b,a]=butter(N,[0.25,0.35],'stop');
 
#band stop filter
freqz(b,a);
title("band stop butterworth filter")




