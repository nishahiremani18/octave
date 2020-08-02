clc;clear;close all;
#order=2
#wc=(pi/2) for high pass and low pass
#wc1=(pi/2)and wc2=(pi/10) for band pass and band reject

subplot(2,2,1)
zplane([0.63662,0.5,0.63662],[1,0,0]);
title("Pole zero plot for Low Pass filter");

subplot(2,2,2)
zplane([-0.63662,0.5,-0.63662],[1,0,0]);
title("Pole zero plot for high Pass filter");

subplot(2,2,3)
zplane([0.2199,0.4,0.2199],[1,0,0]);
title("Pole zero plot for band Pass filter");

subplot(2,2,4)
zplane([-0.2199,0.6,-0.2199],[1,0,0]);
title("Pole zero plot for band reject filter");