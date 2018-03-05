clearvars;
close all;
clc;

%%
Lena1 = imread('lena1.bmp');
Lena2 = imread('lena2.bmp');
Lena3 = imread('lena3.bmp');
Lena4 = imread('lena4.bmp');

figure;
subplot(2,4,1);
imshow(Lena1);
subplot(2,4,5);
imhist(Lena1, 256);
title('Lena1');

subplot(2,4,2);
imshow(Lena2);
subplot(2,4,6);
imhist(Lena2, 256);
title('Lena2');

subplot(2,4,3);
imshow(Lena3);
subplot(2,4,7);
imhist(Lena3, 256);
title('Lena3');

subplot(2,4,4);
imshow(Lena4);
subplot(2,4,8);
imhist(Lena4, 256);
title('Lena4');

%%

Hist1 = imread('hist1.bmp');

figure;
subplot(2,1,1);
imshow(Hist1);
subplot(2,1,2);
imhist(Hist1, 256);

%%

J = imadjust(Hist1);
figure;
subplot(2,1,1);
imshow(J);
subplot(2,1,2);
imhist(J, 256);

%%

[H, x] = imhist(Hist1, 256);


C2 = cumsum(H)/(max(cumsum(H))/max(H));
figure;
subplot(4,1,1); imshow(Hist1); title('Histogram 1');
subplot(3,1,2); imhist(Hist1,256); title('Histogram 1 Histogram');

subplot(3,1,3);
hold on;
plot(x,H); 
plot(x,C2); 
title('Plot(x,H) and Plot(x,C2)');
hold off;

%%

LUT = uint8(255*(C2/max(C2)));
[H2, x2] = imhist(intlut(Hist1,LUT),256);
C22 = cumsum(H2)/(max(cumsum(H2))/max(H2));
subplot(5,1,1); imshow(intlut(Hist1,LUT)); title('Histogram 1 LUT');
subplot(5,1,2); histeq(Hist1,256); title('Histogram 1 histeq');
subplot(5,1,3); imhist(intlut(Hist1,LUT),256); title('Histogram 1 HIST');
subplot(5,1,4); plot(x2,H2); title('Plot(x,H)');
subplot(5,1,5); plot(x2,C22); title('Plot(x,C2)');

%%
Hist2 = imread('hist2.bmp');
Hist3 = imread('hist3.bmp');
Hist4 = imread('hist4.jpg');
figure;
subplot(3,4,1); imshow(Hist2); title('Histogram 2');
subplot(3,4,2); imshow(imadjust(Hist2)); title('Histogram 2 Adjust');
subplot(3,4,3); imshow(histeq(Hist2)); title('Histogram 2 histeq');
subplot(3,4,4); imshow(adapthisteq(Hist2)); title('Histogram 2 adapthisteq');

subplot(3,4,5); imshow(Hist3); title('Histogram 3');
subplot(3,4,6); imshow(imadjust(Hist3)); title('Histogram 3 Adjust');
subplot(3,4,7); imshow(histeq(Hist3)); title('Histogram 3 histeq');
subplot(3,4,8); imshow(adapthisteq(Hist3)); title('Histogram 3 adapthisteq');

subplot(3,4,9); imshow(Hist4); title('Histogram 4');
subplot(3,4,10); imshow(imadjust(Hist4)); title('Histogram 4 Adjust');
subplot(3,4,11); imshow(histeq(Hist4)); title('Histogram 4 histeq');
subplot(3,4,12); imshow(adapthisteq(Hist4)); title('Histogram 4 adapthisteq');
