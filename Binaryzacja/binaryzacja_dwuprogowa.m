clearvars;
close all;
clc;

I = imread('bart.bmp');



progDolny = 190;
progGorny = 210;
IBW = I > progDolny & I < progGorny;

figure;
subplot(2,2,1); imshow(I);
subplot(2,2,3:4); imhist(I, 256);
subplot(2,2,2); imshow(uint8(IBW), []);