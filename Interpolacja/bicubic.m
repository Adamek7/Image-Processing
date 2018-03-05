clearvars;
close all;
clc;


load('a1.mat');


I = imread('chessboard.bmp');


figure(1);
imshow(imresize(I,10));

xReScale = 10;
yReScale = 10;
 
[YY,XX] = size(I);

nYY = round(YY * yReScale);
nXX = round(XX * xReScale);

nI = double(zeros(nYY,nXX));

xStep = XX / nXX;
yStep = YY / nYY;

for jj = 1:(nYY)
    nj = jj*yStep;
    for ii = 1:(nXX)
        ni = ii*xStep;
        %i = floor(ni);
        %j = floor(nj);
        if (ni>XX-2)
            ni = XX-2;
        end;
        if (nj>YY-2)
            nj = YY-2;
        end;
        if (ni<2)
            ni = 2;
        end;
        if (nj<2)
            nj = 2;
        end;
        i = floor(ni);
        j = floor(nj);
        di = ni - i;
        dj = nj - j;
        
        A = (I(j,i));
        B = (I(j,i+1));
        C = (I(j+1,i+1));
        D = (I(j+1,i));
        Ax = (I(j+1,i)-I(j-1,i))/2;
        Bx = (I(j+1,i+1)-I(j-1,i+1))/2;
        Cx = (I(j+2,i+1)-I(j,i+1))/2;
        Dx = (I(j+2,i)-I(j,i))/2;
        Ay = (I(j,i+1)-I(j,i-1))/2;
        By = (I(j,i+2)-I(j,i))/2;
        Cy = (I(j+1,i+2)-I(j+1,i))/2;
        Dy = (I(j+1,i+1)-I(j+1,i-1))/2;
        Axy = (I(j+1,i+1) - I(j-1,i) - I(j,i-1) + I(j,i))/4;
        Bxy = (I(j+1,i+2) - I(j-1,i+1) - I(j,i) + I(j,i+1))/4;
        Cxy = (I(j+2,i+2) - I(j,i+1) - I(j+1,i) + I(j+1,i+1))/4;
        Dxy = (I(j+2,i+1) - I(j,i) - I(j+1,i-1) + I(j+1,i))/4;
        X = double(transpose([A D B C Ax Dx Bx Cx Ay Dy By Cy Axy Dxy Bxy Cxy]));
        Y = mtimes(A1, X);
        nI(jj,ii) = 0;
        temp = 1;
        for x = 0:3
            for y = 0:3
                nI(jj,ii) = nI(jj,ii) + Y(temp)*((dj)^x)*((di)^y);
                temp = temp + 1;
            end
        end
    end
    
end

figure(2);
imshow(uint8(nI));