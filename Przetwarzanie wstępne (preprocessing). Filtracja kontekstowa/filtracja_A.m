%% average

close all;
clearvars;
clc;


Img = imread('plansza.bmp');

Filtr3 = fspecial('average', 3);

Img2 = conv2(Img,Filtr3, 'same');

Img2 = uint8(Img2);

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2); title('Filtracja');
subplot(1,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');

%% average kilka

figure;
subplot(2,3,1); imshow(Img); title('Orginalny');
subplot(2,3,2); imshow(uint8(conv2(Img,fspecial('average', 3),'same'))); title('Filtracja 3x3');
subplot(2,3,3); imshow(uint8(conv2(Img,fspecial('average', 5),'same'))); title('Filtracja 5x5');
subplot(2,3,4); imshow(uint8(conv2(Img,fspecial('average', 9),'same'))); title('Filtracja 9x9');
subplot(2,3,5); imshow(uint8(conv2(Img,fspecial('average', 15),'same'))); title('Filtracja 15x15');
subplot(2,3,6); imshow(uint8(conv2(Img,fspecial('average', 35),'same'))); title('Filtracja 35x35');

%% M

M = [1 2 1; 2 4 2; 1 2 1];
M = M / sum(sum(M));

Img2 = conv2(Img,M, 'same');

Img2 = uint8(Img2);

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2); title('Filtracja');
subplot(1,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');

%% gaussian


Filtr5 = fspecial('gaussian', 5, 0.5);
figure;
mesh(Filtr5);

Img2 = conv2(Img,Filtr5, 'same');

Img2 = uint8(Img2);

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2); title('Filtracja');
subplot(1,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');
