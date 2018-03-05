close all;
clearvars;
clc;

img = imread('shapesReal.png');

img_bin = bwlabel(imerode(imcomplement(im2bw(img,0.22)),strel('rectangle',[5 5])));
img_bin = uint8(img_bin);
figure;
subplot(1,3,1);
imshow(img,[]);
subplot(1,3,2);
imshow(img_bin,[]);


r = regionprops(img_bin,'Centroid');
for i = 1 : length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]); 
end

A = obliczWspolczynniki(img_bin);
[XX,YY] = size(img_bin);

img_bin2 = img_bin;

for i = 1 : XX
   for j = 1 : YY
       
       pixel = img_bin2(i,j);
       if(pixel ~= 0 && (A(pixel,2)) > 0.79 && A(pixel,2) < 0.83)
          img_bin2(i,j) = 0; 
       end
       
   end
end

subplot(1,3,3);
imshow(img_bin2,[]);