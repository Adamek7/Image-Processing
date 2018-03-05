close all;
clearvars;
clc;


Img = imread('moon.bmp');

M = [0 1 0; 1 -4 1; 0 1 0];

M = M / 9;

Img2 = conv2(Img,M,'same');
Img3 = Img2 + 128;
Img4 = abs(Img2);
Filtr = fspecial('laplacian');
Img5 = conv2(Img,Filtr,'same');
figure;
subplot(1,4,1); imshow(Img); title('Orginalny');
subplot(1,4,2); imshow(Img3,[]); title('Filtracja1');
subplot(1,4,3); imshow(Img4,[]); title('Filtracja2');
subplot(1,4,4); imshow(imabsdiff(uint8(Img5),Img),[]); title('Laplacian');


