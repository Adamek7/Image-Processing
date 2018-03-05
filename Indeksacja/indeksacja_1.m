
close all;
clearvars;
clc;

img = imread('ccl1.png');
figure;
subplot(2,2,1:2);
imshow(img);
title('ccl1');

[XX,YY] = size(img);
result = img;

N = 100;
id = 1:N;
lut = zeros(N);
L = 1;

for i = 2 : XX - 1
   for j = 2 : YY - 1
       
      if(result(i,j) ~= 0)
         
          neighbours = [result(i - 1, j - 1) result(i - 1,j) result(i - 1, j + 1) result(i,j - 1)];
          sum_neighbours = sum(neighbours);
          
          if( sum_neighbours == 0)
            result(i,j) = L;
            L = L + 1;
            
          elseif(sum_neighbours > 0)
              neighbours_nonzeros = nonzeros(neighbours);
              neigh_min = min(neighbours_nonzeros);
              neigh_max = max(neighbours_nonzeros);
              
              if(neigh_min == neigh_max)
                result(i,j) = neigh_min;
                  
              else
                  result(i,j) = neigh_min;
                  id = quick_union(id,neigh_max,neigh_min);
              end
              
          end
          
          
      end
      
       
   end
end


for i = 1:N
    lut(i) = quick_union_root(id,i);
end

for i = 2 : XX - 1
   for j = 2 : YY - 1
       if (result(i,j) > 0)
           result(i,j) = lut(result(i,j));
       end
   end
end


result = uint8(result);

subplot(2,2,3);

imshow(label2rgb(result),[]);
title('Wynik');

subplot(2,2,4);
imshow(imread('ccl1Result.png'),[]);
title('ccl1Result');


img = imread('ccl2.png');
img_bwlabel4 = bwlabel(img,4);
img_bwlabel8 = bwlabel(img,8);

figure;
subplot(3,1,1); imshow(img,[]); title('Orginalny');
subplot(3,1,2); imshow(img_bwlabel4,[]); title('bwlabel4');
subplot(3,1,3); imshow(img_bwlabel8,[]); title('bwlabel8');


