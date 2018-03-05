clearvars;
close all;
clc;

%%
Phobos = imread('phobos.bmp');
load histogramZadany;

figure;
subplot(1,5,1);
imshow(Phobos);
title('Phobos');
subplot(1,5,2);
histeq(Phobos);
title('Phobos histeq');
subplot(1,5,3);
imshow(histeq(Phobos,histogramZadany));
title('Phobos histeq zadany');
subplot(1,5,4);
imshow(imadjust(Phobos));
title('Phobos imadjust');
subplot(1,5,5);
imshow(adapthisteq(Phobos));
title('Phobos adapthisteq');


