close all;
clearvars;
clc;


%% Scienianie
Img = imread('fingerprint.bmp');

BWImg1 = bwmorph(Img,'thin');
BWImg2 = bwmorph(Img,'thin',2);
BWImgInf = bwmorph(Img,'thin',Inf);


figure;
subplot(2,2,1); imshow(Img); title('Orginalny');
subplot(2,2,2); imshow(BWImg1); title('Scienianie 1');
subplot(2,2,3); imshow(BWImg2); title('Scienianie 2');
subplot(2,2,4); imshow(BWImgInf); title('Scienianie Inf');

%% Szkieletyzacja

Img = imread('kosc.bmp');

BWImg = bwmorph(Img,'skel',Inf);

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(BWImg); title('Szkieletyzacja');

%% Otwarcie poprzez rekonstrukcje

Img = imread('text.bmp');

SE = ones(51,1);

OpenImg = imopen(Img, SE);

ReconstructImg = imreconstruct(imerode(Img,SE),Img);

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(OpenImg); title('Otwarcie');
subplot(1,3,3); imshow(ReconstructImg); title('Rekonstrukcja');


%% wypelnianie dziur

Img = imread('text.bmp');

FillImg = imfill(Img, 'holes');

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(FillImg); title('Wypelniony');

%% czyszczenie brzegu

Img = imread('text.bmp');

ClearImg = imclearborder(Img);

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(ClearImg); title('Wyczyszcony brzeg');


    