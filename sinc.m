clc;
clear;
close all;
n=-10:10;
w=pi/2;
[y,fs]=audioread("C:/Users/lenovo/Downloads/file_example_WAV_1MG.wav")
c1=y(1:3000,1);
[x,fs]=audioread("C:/Users/lenovo/Downloads")
c2=x(1:5000,1);
z=[c1,c2];
plot(z);
h=(sin(n*pi./2))./(pi.*n);


