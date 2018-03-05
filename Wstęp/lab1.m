clearvars;
clc;

infoJPG = imfinfo('lena.bmp');
infoBMP = imfinfo('lena.jpg');

readJPG = imread('lena.jpg');
readBMP = imread('lena.bmp');

figure(1);
imshow(readJPG);


figure(2);
imshow(readBMP);


figure(3);
lenaGray = rgb2gray(readBMP);
imshow(lenaGray);

imwrite(lenaGray, 'lena_gray.bmp');

colormap gray;
figure(4);
lena = mesh(lenaGray);

figure(5);
plot(readBMP(10,:));

