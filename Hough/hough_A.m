close all;
clearvars;
clc;


obraz = zeros(11);



figure;
obraz(6,6) = 1;
[H,T,R] = hough(obraz,'RhoResolution',0.1,'ThetaResolution',0.5);
subplot(2,2,1); imshow(H,[]); title('1 punkt');

obraz(9,10) = 1;
[H,T,R] = hough(obraz,'RhoResolution',0.1,'ThetaResolution',0.5);
subplot(2,2,2); imshow(H,[]); title('2 punkty');

obraz(3,2) = 1;
[H,T,R] = hough(obraz,'RhoResolution',0.1,'ThetaResolution',0.5);
subplot(2,2,3); imshow(H,[]); title('3 punkty');

obraz(1,8) = 1;
[H,T,R] = hough(obraz,'RhoResolution',0.1,'ThetaResolution',0.5);
subplot(2,2,4); imshow(H,[]); title('4 punkty');


theta = T(75);
rho = R(133);

x = 0:0.1:10;
y = (rho - x*cosd(theta))/sind(theta);

figure;
imshow(obraz,[]);
hold on;
plot(x+1,y+1);
hold off;