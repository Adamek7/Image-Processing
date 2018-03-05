clear all;
close all;
clc;

img = imread('lab112.png');

figure;
subplot(2,2,1);
imshow(img);


bin = im2bw(img,35/255);

subplot(2,2,2);

imshow(bin);



SE = strel('square',3);

bin = imopen(bin, SE);
bin = imclose(bin, SE);
bin = imerode(bin, SE);
bin = imdilate(bin, SE);
bin = imdilate(bin, SE);
bin = imclose(bin, SE);
bin = imdilate(bin, SE);
bin = imcomplement(bin);



subplot(2,2,3);
imshow(bin);

%%

bin = edge(bin,'canny');
subplot(2,2,4);
imshow(bin);

[H,T,R] = hough(bin);
figure;
imshow(H,[]);
hold on;
peaks = houghpeaks(H,8);
plot(peaks(:,2),peaks(:,1),'o');

lines = houghlines(bin,T,R,peaks,'FillGap',5,'MinLength',7);
figure, imshow(bin), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end





