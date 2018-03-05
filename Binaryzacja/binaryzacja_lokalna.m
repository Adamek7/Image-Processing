clearvars;
close all;
clc;

I = imread('rice.png');
IBW = I;
IBWS = I;
[X Y] = size(I);
W2 = round(30/2);
k = 0.15;
R = 128;
for i = 1:X
    for j = 1:Y
        srednia = meanLT(i,j,W2,I,X,Y);
        odchStd = stddevLT(i,j,W2,I,srednia,X,Y);
        T = srednia*(1-k*(odchStd/R -1));
        if T > I(i,j) 
            IBWS(i,j) = 0;
        else
            IBWS(i,j) = 255;
        end
        if srednia > I(i,j) 
            IBW(i,j) = 0;
        else
            IBW(i,j) = 255;
        end
    end
end

subplot(1,3,1); imshow(I); title('Orginalny obraz');
subplot(1,3,2); imshow(IBW); title('Binaryzacja lokalna');
subplot(1,3,3); imshow(IBWS); title('Algorytm Sauvoli');