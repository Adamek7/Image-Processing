clearvars;
close all;
clc;


kolo = boolean(imread('kolo.bmp'));
kwadrat = boolean(imread('kwadrat.bmp'));

figure('Name', 'Orginalne', 'NumberTitle', 'off');
subplot(2,2,1:2);
imshow(kolo);
subplot(2,2,3:4);
imshow(kwadrat);



figure('Name', 'NOT', 'NumberTitle', 'off');
subplot(2,2,1);
imshow(kolo);
subplot(2,2,2);
imshow(kwadrat);
subplot(2,2,3);
imshow(~kolo);
subplot(2,2,4);
imshow(~kwadrat);

figure('Name', 'AND', 'NumberTitle', 'off');
subplot(2,2,1);
imshow(kolo);
subplot(2,2,2);
imshow(kwadrat);
subplot(2,2,3:4);
imshow(kolo&kwadrat);


figure('Name', 'OR', 'NumberTitle', 'off');
subplot(2,2,1);
imshow(kolo);
subplot(2,2,2);
imshow(kwadrat);
subplot(2,2,3:4);
imshow(kolo|kwadrat);


figure('Name', 'XOR', 'NumberTitle', 'off');
subplot(2,2,1);
imshow(kolo);
subplot(2,2,2);
imshow(kwadrat);
subplot(2,2,3:4);
imshow(xor(kolo,kwadrat));