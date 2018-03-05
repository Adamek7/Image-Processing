clearvars;
close all;
clc;

Img = imread('100zloty.jpg');
grayImg = rgb2gray(Img);


figure;
subplot(3,4,1:2);
imshow(grayImg);
title('Orginalny obraz');
subplot(3,4,3:4);
imshow(bitget(grayImg,1)+bitget(grayImg,2)*2+bitget(grayImg,3)*4+bitget(grayImg,4)*8+bitget(grayImg,5)*16+bitget(grayImg,6)*32+bitget(grayImg,7)*64+bitget(grayImg,8)*128, []);
title('Odzyskany obraz');
I2 = bitget(grayImg,1);
subplot(3,4,5);
imshow(I2, []);
title('Bit 1');
I2 = bitget(grayImg,2);
subplot(3,4,6);
imshow(I2, []);
title('Bit 2');
I2 = bitget(grayImg,3);
subplot(3,4,7);
imshow(I2, []);
title('Bit 3');
I2 = bitget(grayImg,4);
subplot(3,4,8);
imshow(I2, []);
title('Bit 4');
I2 = bitget(grayImg,5);
subplot(3,4,9);
imshow(I2, []);
title('Bit 5');
I2 = bitget(grayImg,6);
subplot(3,4,10);
imshow(I2, []);
title('Bit 6');
I2 = bitget(grayImg,7);
subplot(3,4,11);
imshow(I2, []);
title('Bit 7');
I2 = bitget(grayImg,8);
subplot(3,4,12);
imshow(I2, []);
title('Bit 8');


figure;
subplot(2,2,1);
imshow(grayImg);
title('Orginalny obraz');
subplot(2,2,2);
imshow(bitget(grayImg,7)*64+bitget(grayImg,8)*128, []);
title('Bit 8&7');
subplot(2,2,3);
imshow(bitget(grayImg,6)*32+bitget(grayImg,7)*64+bitget(grayImg,8)*128, []);
title('Bit 8&7&6');
subplot(2,2,4);
imshow(bitget(grayImg,5)*16+bitget(grayImg,6)*32+bitget(grayImg,7)*64+bitget(grayImg,8)*128, []);
title('Bit 8&7&6&5');

