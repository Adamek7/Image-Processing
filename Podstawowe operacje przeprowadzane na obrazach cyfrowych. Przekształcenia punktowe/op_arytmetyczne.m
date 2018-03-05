clearvars;
close all;
clc;

Lena = imread('lena.bmp');
Jet = imread('jet.bmp');



figure('Name', 'Dodawanie', 'NumberTitle', 'off');
LenaJet = imadd(Lena,Jet,'uint16');
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);




figure('Name', 'kombinacja liniowa', 'NumberTitle', 'off');
LenaJet = imlincomb(4,Lena,1,Jet,'uint16');
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);


figure('Name', 'Odejmowanie', 'NumberTitle', 'off');
LenaJet = imsubtract(int16(Lena),int16(Jet));
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);


figure('Name', 'Wartość bezwzgledna z odejmowania', 'NumberTitle', 'off');
LenaJet = imabsdiff(int16(Lena),int16(Jet));
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);



figure('Name', 'Mnożenie LenaxJet', 'NumberTitle', 'off');
LenaJet = immultiply(int16(Lena),int16(Jet));
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);



figure('Name', 'Mnożenie LenaxStała', 'NumberTitle', 'off');
LenaJet = immultiply(int16(Lena),100);
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);


figure('Name', 'Mnożenie LenaxMaska', 'NumberTitle', 'off');
maska = boolean(imread('kolo.bmp'));
LenaJet = immultiply(int16(Lena),maska);
subplot(2,2,1:2);
imshow(LenaJet,[]);
subplot(2,2,3);
imshow(Lena);
subplot(2,2,4);
imshow(Jet);



figure('Name', 'Negatyw', 'NumberTitle', 'off');
LenaNeg = imcomplement(int16(Lena));
subplot(2,2,1:2);
imshow(LenaNeg,[]);
subplot(2,2,3:4);
imshow(Lena);



