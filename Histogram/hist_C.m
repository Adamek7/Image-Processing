clearvars;
close all;
clc;

LenaRGB = imread('lenaRGB.bmp');


subplot(2,4,1); imshow(LenaRGB); title('Lena RGB');
subplot(2,4,2); imshow(LenaRGB(:,:,1)); title('Lena R');
subplot(2,4,3); imshow(LenaRGB(:,:,2)); title('Lena G');
subplot(2,4,4); imshow(LenaRGB(:,:,3)); title('Lena B');

%subplot(2,4,5); imhist(LenaRGB, 256); title('Lena RGB Histogram');
subplot(2,4,6); imhist(LenaRGB(:,:,1), 256); title('Lena R Histogram');
subplot(2,4,7); imhist(LenaRGB(:,:,2), 256); title('Lena G Histogram');
subplot(2,4,8); imhist(LenaRGB(:,:,3), 256); title('Lena B Histogram');


%%

LenaR_EQ = histeq(LenaRGB(:,:,1));
LenaG_EQ = histeq(LenaRGB(:,:,2));
LenaB_EQ = histeq(LenaRGB(:,:,3));

LenaEQ = LenaRGB;
LenaEQ(:,:,1) = LenaR_EQ;
LenaEQ(:,:,2) = LenaG_EQ;
LenaEQ(:,:,3) = LenaB_EQ;

figure;
subplot(1,2,1);
imshow(LenaRGB);
title('LenaRGB');
subplot(1,2,2);
imshow(LenaEQ);
title('LenaEQ');

%%

LenaHSV = rgb2hsv(LenaRGB);

figure;

% subplot(4,1,1); imhist(LenaHSV, 256); title('Lena HSV Histogram');
subplot(3,1,1); imhist(LenaHSV(:,:,1), 256); title('Lena H Histogram');
subplot(3,1,2); imhist(LenaHSV(:,:,2), 256); title('Lena S Histogram');
subplot(3,1,3); imhist(LenaHSV(:,:,3), 256); title('Lena V Histogram');

%%
LenaV = LenaHSV(:,:,3);
LenaV_EQ = histeq(LenaV);

LenaHSV_EQ = LenaHSV;
LenaHSV_EQ(:,:,3) = LenaV_EQ;

figure;
subplot(1,2,1);
imshow(LenaRGB);
title('LenaRGB');
subplot(1,2,2);
imshow(hsv2rgb(LenaHSV_EQ));
title('LenaHSV EQ');
