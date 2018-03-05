close all;
clearvars;
clc;

square = imread('kwadraty.png');

log = edge(square,'log',0.1,1);

figure;
subplot(1,2,1); imshow(square); title('Orginalny');
subplot(1,2,2); imshow(log); title('Detekcja log');

[H,T,R] = hough(log);

% figure;
% imshow(H,[]);

peaks = houghpeaks(H,8);

figure;
imshow(H,[]);
hold on;
plot(peaks(:,2),peaks(:,1),'o');
hold off;


lines = houghlines(log,T,R,peaks,'FillGap',5,'MinLength',7);
figure, imshow(square), hold on
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
hold off;