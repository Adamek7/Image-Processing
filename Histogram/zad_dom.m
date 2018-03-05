clearvars;
close all;
clc;


Img = imread('jet.bmp');

lm = round(mean(mean(Img)));

[H x] = imhist(Img, 256);
H1 = H(1:lm);
H2 = H(lm+1:256);



H1 = H1/sum(H1);
H2 = H2/sum(H2);

C1 = cumsum(H1);
C2 = cumsum(H2);

C1n = (lm)*C1;
C2n = lm+1 + (255-lm+1)*C2;
lut = uint8([C1n; C2n]);




subplot(1,3,1); imshow(Img), title('Orginalny obraz');
subplot(1,3,2); imshow(intlut(Img,lut)); title('BBHE obraz');
subplot(1,3,3); imshow(histeq(Img,256)); title('HE obraz');
