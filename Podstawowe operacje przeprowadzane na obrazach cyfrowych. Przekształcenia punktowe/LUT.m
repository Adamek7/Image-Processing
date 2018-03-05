function [ ] = LUT( obraz, przekodowanie)

Img = imread(obraz);
subplot(2,2,1:2);
plot(przekodowanie);
title('Wykres przekodowania');
xlim([0 265]);
ylim([0 270]);
subplot(2,2,3);
imshow(Img);
title('Orginalny obraz');
subplot(2,2,4);
imshow(intlut(Img,przekodowanie));
title('Przekodowany obraz');

end

