close all;
clearvars;
clc;


Img = imread('lenaSzum.bmp');

Img2 = medfilt2(Img);

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2); title('Filtracja');
subplot(1,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');


%%

Img = imread('lena.bmp');

Filtr3 = fspecial('average', 3);

Img2 = conv2(Img,Filtr3, 'same');

Img2 = uint8(Img2);
Img3 = medfilt2(Img);

figure;
subplot(2,3,1); imshow(Img); title('Orginalny');
subplot(2,3,2); imshow(Img2); title('Filtracja average');
subplot(2,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');
subplot(2,3,4); imshow(Img); title('Orginalny');
subplot(2,3,5); imshow(Img3); title('Filtracja medianowa');
subplot(2,3,6); imshow(imabsdiff(Img3,Img), []); title('Modul roznicy');

%%

Img = imread('lena.bmp');
Img2 = Img;
for i = 0:11
    Img2 = medfilt2(Img2,[5 5]);
end

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2); title('Filtracja');
subplot(1,3,3); imshow(imabsdiff(Img2,Img), []); title('Modul roznicy');