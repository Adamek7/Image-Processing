clearvars;
close all;
clc;
figure('Name','Orginal','NumberTitle','off');
imshow(imread('chessboard.bmp'));
figure('Name','Imresize','NumberTitle','off');
imshow(imresize(imread('chessboard.bmp'), 10));
dwuliniowa_f('chessboard.bmp', 10,10);
sasiad_f('chessboard.bmp', 10,10);


clearvars;
close all;
clc;
figure('Name','Orginal','NumberTitle','off');
imshow(imread('lena.bmp'));
figure('Name','Imresize','NumberTitle','off');
imshow(imresize(imread('lena.bmp'), 1.5));
dwuliniowa_f('lena.bmp', 1.5, 1.5);
sasiad_f('lena.bmp', 1.5, 1.5);


clearvars;
close all;
clc;
figure('Name','Orginal','NumberTitle','off');
imshow(imread('parrot.bmp'));
figure('Name','Imresize','NumberTitle','off');
imshow(imresize(imread('parrot.bmp'), 10));
dwuliniowa_f('parrot.bmp', 10,10);
sasiad_f('parrot.bmp', 10,10);

%% dpi

clearvars;
close all;
clc;

I = imread('lena.bmp');
I2 = imresize(I,[256 256]);
I3 = imresize(I,[128 128]);
I4 = imresize(I,[64 64]);
figure('Name','Orginal','NumberTitle','off');
imshow(I);
figure('Name','Magnification x2','NumberTitle','off');
imshow(I2, 'InitialMagnification', 200);
figure('Name','Magnification x4','NumberTitle','off');
imshow(I3, 'InitialMagnification', 400);
figure('Name','Magnification x8','NumberTitle','off');
imshow(I4, 'InitialMagnification', 800);

%% Liczba poziomów jasności

clearvars;
close all;
clc;
I = imread('lena.bmp');
I2 = imresize(I, [128 128]);
J1 = imadjust(I2,[0 1],[0 (31/255)]);
J2 = imadjust(I2,[0 1],[0 (15/255)]);
J3 = imadjust(I2,[0 1],[0 (7/255)]);
J4 = imadjust(I2,[0 1],[0 (3/255)]);
J5 = imadjust(I2,[0 1],[0 (1/255)]);
figure;
imshow(I2);
figure;
imshow(J1, []);
figure;
imshow(J2, []);
figure;
imshow(J3, []);
figure;
imshow(J4, []);
figure;
imshow(J5, []);


