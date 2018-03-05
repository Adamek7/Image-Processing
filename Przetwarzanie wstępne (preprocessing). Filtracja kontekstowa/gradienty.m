close all;
clearvars;
clc;


Img = imread('kw.bmp');

load maskiPP;

Img2 = conv2(Img,R1, 'same');
Img3 = conv2(Img,R2, 'same');

Img4 = Img2 + 128;
Img5 = Img3 + 128;
Img6 = abs(Img2);
Img7 = abs(Img3);


figure;
subplot(2,3,1); imshow(Img); title('Orginalny');
subplot(2,3,2); imshow(Img4,[]); title('DetekcjaR1 +128');
subplot(2,3,3); imshow(Img5,[]); title('DetekcjaR2 +128');
subplot(2,3,5); imshow(Img6,[]); title('DetekcjaR1 abs');
subplot(2,3,6); imshow(Img7,[]); title('DetekcjaR2 abs');



%%

Img2 = conv2(Img,P1, 'same');
Img3 = conv2(Img,P2, 'same');

Img4 = Img2 + 128;
Img5 = Img3 + 128;
Img6 = abs(Img2);
Img7 = abs(Img3);


figure;
subplot(2,3,1); imshow(Img); title('Orginalny');
subplot(2,3,2); imshow(Img4,[]); title('DetekcjaP1 +128');
subplot(2,3,3); imshow(Img5,[]); title('DetekcjaP2 +128');
subplot(2,3,5); imshow(Img6,[]); title('DetekcjaP1 abs');
subplot(2,3,6); imshow(Img7,[]); title('DetekcjaP2 abs');

%%

Img2 = conv2(Img,S1, 'same');
Img3 = conv2(Img,S2, 'same');

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img2,[]); title('DetekcjaS1');
subplot(1,3,3); imshow(Img3,[]); title('DetekcjaS2');


OW = sqrt(conv2(Img,S1,'same').^2+conv2(Img,S2,'same').^2);

figure;
imshow(OW,[]);


