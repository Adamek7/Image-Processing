close all;
clearvars;
clc;




Img = imread('plytkaSzumImp.bmp');
Img2 = Img;
Img3 = medfilt2(Img,[7 7]);

% figure;
% subplot(1,2,1); imshow(Img); title('Orginalny');
% subplot(1,2,2); imshow(Img2); title('Filtracja');
Smax = 7;




[X Y] = size(Img);
for i = 4:X-3
    for j = 4:Y-3
         Snow = 3;
         [Zmin Zmax Zmed] = Window1(i,j,Snow,Img);
         Img2(i,j) = FazaA(i,j,Zmin,Zmax,Zmed,Img,Snow,Smax);
    end
end

figure;
subplot(1,3,1); imshow(Img); title('Orginalny');
subplot(1,3,2); imshow(Img3); title('Wbudowana');
subplot(1,3,3); imshow(Img2); title('Algorytm');

function [Zmin, Zmax, Zmed] = Window1(X,Y,Size,Img)
Q = zeros(Size);
Ii = (X-((Size-1)/2));
for i = 1:Size
    Ij = (Y-((Size-1)/2));
    for j = 1:Size
        Q(i,j) = Img(Ii,Ij);
        Ij = Ij + 1;
    end
    Ii = Ii + 1;
    
end
Zmin = min(Q(:));
Zmax = max(Q(:));
Zmed = median(Q(:));
end

function y = FazaA(X,Y,Zmin,Zmax,Zmed,Img,Snow,Smax)
A1 = Zmed - Zmin;
A2 = Zmed - Zmax;
if A1 > 0 && A2 < 0
    y = FazaB(Zmin,Zmax,Img(X,Y),Zmed);
else
    Snow = Snow + 2;
    if Snow <= Smax
       [Zmin Zmax Zmed] = Window1(X,Y,Snow,Img);
       y = FazaA(X,Y,Zmin,Zmax,Zmed,Img,Snow,Smax);
    else
        y = Zmed;
    end
end
end

function y = FazaB(Zmin,Zmax,Zxy,Zmed)
B1 = Zxy - Zmin;
B2 = Zxy - Zmax;
if B1 > 0 && B2 < 0
    y = Zxy;
else
    y = Zmed;
end
end



