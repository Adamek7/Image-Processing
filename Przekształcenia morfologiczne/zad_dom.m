clear all;
close all;
clc;

lut = makelut(@foo,3);

img = imread('szkielet.bmp');

figure;
subplot(1,2,1);
imshow(img);
title('Orginal');

result = applylut(img,lut);

subplot(1,2,2);
imshow(result);
title('Detekcja zakonczen');

%% Gra w zycie

load gra.mat

result = gra;

 
figure;
for i = 1 : 10
    subplot(2,5,i);
    imshow(result);
    result = applylut(result,lut);
end

result = gra2;

figure;
for i = 1 : 20
    subplot(4,5,i);
    imshow(result);
    result = applylut(result,lut);
end



function wynik = foo(nhood)
        wynik = nhood(2,2) & (sum(nhood(:)) == 2);
end


% function wynik = foo(nhood)
%         if (nhood(2,2) == 1)
%             if (sum(nhood(:)) == 3 || sum(nhood(:)) == 4)
%                 wynik = true;
%             else
%                 wynik = false;
%             end
%         else
%             if (sum(nhood(:)) == 3)
%                 wynik = true;
%             else
%                 wynik = false;
%             end
%         end
% end