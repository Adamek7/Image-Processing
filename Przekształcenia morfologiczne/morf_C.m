close all;
clearvars;
clc;

Img = imread('ferrari.bmp');

SE = strel('square', 3);

ErodeImg = imerode(Img, SE);
DilateImg = imdilate(Img, SE);


figure;
subplot(2,2,1); imshow(Img); title('Orginalny');
subplot(2,2,2); imshow(ErodeImg); title('Erozja');
subplot(2,2,3); imshow(DilateImg); title('Dylatacja');
subplot(2,2,4); imshow(imabsdiff(DilateImg,ErodeImg),[]); title('Roznica');

%% otwarcie i zamkniecie

Img = imread('ferrari.bmp');

SE = strel('square', 3);

OpenImg = imopen(Img, SE);
CloseImg = imclose(Img, SE);


figure;
subplot(2,2,1:2); imshow(Img); title('Orginalny');
subplot(2,2,3); imshow(OpenImg); title('Otwarcie');
subplot(2,2,4); imshow(CloseImg); title('Zamkniecie');


%% top-hat i bottom-hat

Img = imread('ferrari.bmp');

SE = strel('square', 3);

TopHatImg = imtophat(Img,SE);
BotHatImg = imbothat(Img,SE);

figure;
subplot(2,2,1:2); imshow(Img); title('Orginalny');
subplot(2,2,3); imshow(TopHatImg); title('top-hat');
subplot(2,2,4); imshow(BotHatImg); title('bottom-hat');

%% ryz

Img = imread('rice.png');

SE = strel('disk', 10);

TopHatImg = imtophat(Img,SE);

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(TopHatImg); title('top-hat');

