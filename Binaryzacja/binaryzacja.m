clearvars;
close all;
clc;
%%
Img = imread('coins.png');

figure;
subplot(2,3,1); imshow(Img); title('Orginalny obraz');
subplot(2,3,4); imhist(Img, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(Img,(100/255))); title(['Doswiadczalna ', num2str(100 /255)]);
subplot(2,3,3); imshow(im2bw(Img,graythresh(Img))); title(['Otsu ', num2str(graythresh(Img))]);
subplot(2,3,5); imshow(im2bw(Img,(clusterKittler(Img)/255))); title(['Kittler ', num2str(clusterKittler(Img)/255)]);
subplot(2,3,6); imshow(im2bw(Img,(entropyYen(Img)/255))); title(['Yen ',num2str(entropyYen(Img)/255)]);
%%
Figura = imread('figura.png');

figure;
subplot(2,4,1); imshow(Figura);
subplot(2,4,5); imhist(Figura, 256);

Figura2 = imread('figura2.png');


subplot(2,4,2); imshow(Figura2);
subplot(2,4,6); imhist(Figura2, 256);

Figura3 = imread('figura3.png');


subplot(2,4,3); imshow(Figura3);
subplot(2,4,7); imhist(Figura3, 256);

Figura4 = imread('figura4.png');


subplot(2,4,4); imshow(Figura4);
subplot(2,4,8); imhist(Figura4, 256);

%%
Img = imread('rice.png');

figure;
subplot(2,3,1); imshow(Img); title('Orginalny obraz');
subplot(2,3,4); imhist(Img, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(Img,(150/255))); title(['Doswiadczalna ', num2str(150/255)]);
subplot(2,3,3); imshow(im2bw(Img,graythresh(Img))); title(['Otsu ', num2str(graythresh(Img))]);
subplot(2,3,5); imshow(im2bw(Img,(clusterKittler(Img)/255))); title(['Kittler ', num2str(clusterKittler(Img)/255)]);
subplot(2,3,6); imshow(im2bw(Img,(entropyYen(Img)/255))); title(['Yen ',num2str(entropyYen(Img)/255)]);

%%
Img = imread('tekst.bmp');

figure;
subplot(2,3,1); imshow(Img); title('Orginalny obraz');
subplot(2,3,4); imhist(Img, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(Img,(180/255))); title(['Do�wiadczalna ', num2str(180/255)]);
subplot(2,3,3); imshow(im2bw(Img,graythresh(Img))); title(['Otsu ', num2str(graythresh(Img))]);
subplot(2,3,5); imshow(im2bw(Img,(clusterKittler(Img)/255))); title(['Kittler ', num2str(clusterKittler(Img)/255)]);
subplot(2,3,6); imshow(im2bw(Img,(entropyYen(Img)/255))); title(['Yen ',num2str(entropyYen(Img)/255)]);

%%
Img = imread('obiekty.bmp');

figure;
subplot(2,3,1); imshow(Img); title('Orginalny obraz');
subplot(2,3,4); imhist(Img, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(Img,(130/255))); title(['Do�wiadczalna ', num2str(130/255)]);
subplot(2,3,3); imshow(im2bw(Img,graythresh(Img))); title(['Otsu ', num2str(graythresh(Img))]);
subplot(2,3,5); imshow(im2bw(Img,(clusterKittler(Img)/255))); title(['Kittler ', num2str(clusterKittler(Img)/255)]);
subplot(2,3,6); imshow(im2bw(Img,(entropyYen(Img)/255))); title(['Yen ',num2str(entropyYen(Img)/255)]);

%%
Img = imread('katalog.bmp');

figure;
subplot(2,3,1); imshow(Img); title('Orginalny obraz');
subplot(2,3,4); imhist(Img, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(Img,(150/255))); title(['Do�wiadczalna ', num2str(150/255)]);
subplot(2,3,3); imshow(im2bw(Img,graythresh(Img))); title(['Otsu ', num2str(graythresh(Img))]);
subplot(2,3,5); imshow(im2bw(Img,(clusterKittler(Img)/255))); title(['Kittler ', num2str(clusterKittler(Img)/255)]);
subplot(2,3,6); imshow(im2bw(Img,(entropyYen(Img)/255))); title(['Yen ',num2str(entropyYen(Img)/255)]);
