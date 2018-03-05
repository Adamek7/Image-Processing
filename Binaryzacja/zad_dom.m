clearvars;
close all;
clc;

a = 0.5;
N = 20;

I = imread('tekstReczny.png');
IBW = I;
[X Y] = size(I);

for i = 1:X
    A = zeros(1,N);
    m=0;
    for j = 1:Y
        A = [I(i,j), A(1:N-1)];
%         m = m + (A(1)-A(N))/N;
        m = sum(A)/N;
        T = a * m;
        if T > I(i,j) 
            IBW(i,j) = 0;
        else
            IBW(i,j) = 255;
        end
    end
end
figure;
subplot(1,2,1); imshow(I);
subplot(1,2,2); imshow(IBW);


figure;
subplot(2,3,1); imshow(I); title('Orginalny obraz');
subplot(2,3,4); imhist(I, 256); title('Histogram');
subplot(2,3,2); imshow(im2bw(I,(80/255))); title(['Doœwiadczalna ', num2str(100 /255)]);
subplot(2,3,3); imshow(im2bw(I,graythresh(I))); title(['Otsu ', num2str(graythresh(I))]);
subplot(2,3,5); imshow(im2bw(I,(clusterKittler(I)/255))); title(['Kittler ', num2str(clusterKittler(I)/255)]);
subplot(2,3,6); imshow(im2bw(I,(entropyYen(I)/255))); title(['Yen ',num2str(entropyYen(I)/255)]);