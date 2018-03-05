close all;
clearvars;
clc;

dom = imread('dom.png');

log = edge(dom,'log');
canny = edge(dom,'canny');
sobel = edge(dom,'sobel');

figure;
subplot(2,2,1); imshow(dom); title('Orginalny');
subplot(2,2,2); imshow(log); title('Detekcja log');
subplot(2,2,3); imshow(canny); title('Detekcja canny');
subplot(2,2,4); imshow(sobel); title('Detekcja sobel');


log = edge(dom,'log',0.0061,2);
canny = edge(dom,'canny',[0.05 0.3]);
sobel = edge(dom,'sobel',0.140,'both');

figure;
subplot(2,2,1); imshow(dom); title('Orginalny');
subplot(2,2,2); imshow(log); title('Detekcja log recznie');
subplot(2,2,3); imshow(canny); title('Detekcja canny recznie');
subplot(2,2,4); imshow(sobel); title('Detekcja sobel recznie');


