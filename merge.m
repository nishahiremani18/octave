clc;
clear;
close all;
x=audioread("clap.wav.m4a");
h=audioread("rap.wav");
y=conv(x,h);