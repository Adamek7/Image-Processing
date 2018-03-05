close all;
clearvars;
clc;

Img = imread('calculator.bmp');

SE = ones(1,71);

ReconstructImg = imreconstruct(imerode(Img,SE),Img);
OpenImg = imopen(Img, SE);


figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(ReconstructImg); title('Otwarcie przez rekonstrukcje');
subplot(1,3,3); imshow(OpenImg); title('Otwarcie klasyczne');  


%% top-hat

TopHatImg = imtophat(Img,SE);
ReconstructTopHatImg = imabsdiff(Img, ReconstructImg);

figure;
subplot(1,2,1); imshow(ReconstructTopHatImg, []); title('top-hat poprzez rekonstrukcje');
subplot(1,2,2); imshow(TopHatImg); title('top-hat klasyczny'); 


%% odblaski pionowe

SE = ones(1,11);

ReconstructImg2 = imreconstruct(imerode(ReconstructTopHatImg,SE),ReconstructTopHatImg);

figure;
imshow(ReconstructImg2,[]);

%% literki I


SE = ones(1,21);

DilateImg = imdilate(ReconstructImg2,SE);

Result = imreconstruct(min(DilateImg,ReconstructTopHatImg),ReconstructTopHatImg);

figure;
imshow(Result, []);
