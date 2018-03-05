close all;
clearvars;
clc;

Img = imread('ertka.bmp');

size = 3;
SESquare = strel('square',size);
SEDiamond = strel('diamond', size);
SEOctagon = strel('octagon', size);

ErodeSquare = imerode(Img,SESquare);
ErodeDiamond = imerode(Img,SEDiamond);
ErodeOctagon = imerode(Img, SEOctagon);

figure;
subplot(2,2,1); imshow(Img); title('Orginalny');
subplot(2,2,2); imshow(ErodeSquare); title('Erozja Kwadrat');
subplot(2,2,3); imshow(ErodeDiamond); title('Erozja Diament');
subplot(2,2,4); imshow(ErodeOctagon); title('Erozja Osmiokat');


%% Erozja 2  i 3 razy
ErodeSquare1 = imerode(Img,SESquare);
ErodeSquare2 = imerode(imerode(Img,SESquare),SESquare);
ErodeSquare3 = imerode(imerode(imerode(Img,SESquare),SESquare),SESquare);

figure;
subplot(2,2,1); imshow(Img); title('Orginalny');
subplot(2,2,2); imshow(ErodeSquare1); title('Erozja Kwadrat 1 raz');
subplot(2,2,3); imshow(ErodeSquare2); title('Erozja Kwadrat 2 razy');
subplot(2,2,4); imshow(ErodeSquare3); title('Erozja Kwadrat 3 razy');

%% usuwanie wlosow

Img = imread('buzka.bmp');

SEHair = [1 1;  1 1];
ErodeHair = imerode(Img,SEHair);

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(ErodeHair); title('Bez wlosow');

%% dylatacja

Img = imread('ertka.bmp');

SESquare = strel('square', 3);

DilateSquare = imdilate(Img, SESquare);

subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(DilateSquare); title('Dylatacja');

%% 4 operacje

Img = imread('ertka.bmp');

SE = strel('square', 3);

ErodeImg = imerode(Img, SE);
DilateImg = imdilate(Img, SE);
OpenImg = imopen(Img, SE);
CloseImg = imclose(Img, SE);

figure;
subplot(3,5,1); imshow(Img); title('Orginalny');
subplot(3,5,2); imshow(ErodeImg); title('Erozja');
subplot(3,5,3); imshow(DilateImg); title('Dylatacja');
subplot(3,5,4); imshow(OpenImg); title('Otwarcie');
subplot(3,5,5); imshow(CloseImg); title('Zamkni�cie');

Img = imread('wyspa.bmp');

ErodeImg = imerode(Img, SE);
DilateImg = imdilate(Img, SE);
OpenImg = imopen(Img, SE);
CloseImg = imclose(Img, SE);

subplot(3,5,6); imshow(Img); title('Orginalny');
subplot(3,5,7); imshow(ErodeImg); title('Erozja');
subplot(3,5,8); imshow(DilateImg); title('Dylatacja');
subplot(3,5,9); imshow(OpenImg); title('Otwarcie');
subplot(3,5,10); imshow(CloseImg); title('Zamkni�cie');

Img = imread('kolka.bmp');

SE = strel('square', 3);

ErodeImg = imerode(Img, SE);
DilateImg = imdilate(Img, SE);
OpenImg = imopen(Img, SE);
CloseImg = imclose(Img, SE);

subplot(3,5,11); imshow(Img); title('Orginalny');
subplot(3,5,12); imshow(ErodeImg); title('Erozja');
subplot(3,5,13); imshow(DilateImg); title('Dylatacja');
subplot(3,5,14); imshow(OpenImg); title('Otwarcie');
subplot(3,5,15); imshow(CloseImg); title('Zamkni�cie');

%% napis RT

Img = imread('ertka.bmp');

SE = strel('square', 3);

RT = imdilate(imdilate(imopen(Img,SE),SE),SE);

figure;
imshow(RT);

%% trafi nie trafi

Img = imread('hom.bmp');

SE1 = [0 1 0; 1 1 1; 0 1 0];
SE2 = [1 0 1; 0 0 0; 1 0 1];

BW = bwhitmiss(Img, SE1, SE2);

figure;
subplot(1,2,1); imshow(Img); title('Orginalny');
subplot(1,2,2); imshow(BW); title('Trafi nie trafi');