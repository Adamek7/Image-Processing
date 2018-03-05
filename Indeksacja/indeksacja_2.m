close all;
clearvars;
clc;


kolo = [0.9 1];


img = imread('shapes.png');

figure;
subplot(1,3,1);
imshow(img,[]);
title('orginal');


result = bwlabel(img);
% result = uint8(result);

subplot(1,3,2);
imshow(result,[]);
title('obraz po indeksacji');

A = obliczWspolczynniki(result);
[XX,YY] = size(result);

r = regionprops(result,'Centroid');
for i = 1 : length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]); 
end

result_conv = result;

for i = 1 : XX
   for j = 1 : YY
       
       pixel = result_conv(i,j);   
       if(pixel ~= 0 && (A(pixel,2) > 0.9 && A(pixel,2) < 1))
          result_conv(i,j) = 0; 
       end
       
   end
end

subplot(1,3,3);
imshow(result_conv,[]);
title('bez kol')
