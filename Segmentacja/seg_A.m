close all;
clearvars;
clc;

knee = imread('knee.png');
knee = double(knee);

imshow(knee, []);

[X, Y] = ginput(1);
% X = 239;
% Y = 238;

X = round(X);
Y = round(Y);

[Ix, Iy] = size(knee);

visited = zeros(Ix,Iy);
segmented = zeros(Ix,Iy);

stack = zeros(10000,2);

iStack = 1;

stack(iStack,1) = X;
stack(iStack,2) = Y;

visited(X,Y) = 1;
segmented(X,Y) = 1;

tollerance = 30;
nS = 0;
mV = 0;

while iStack > 0
    tmpx = stack(iStack,1);
    tmpy = stack(iStack,2);
    segmented(tmpx,tmpy) = knee(tmpx,tmpy);
    iStack = iStack - 1;
    nS = nS + 1;
    mV = (mV*(nS-1)+knee(tmpx,tmpy))/nS;
    
    if tmpx > 1 && tmpx < Ix && tmpy > 1 && tmpy < Iy
        for itx = tmpx-1:tmpx+1
            for ity = tmpy-1:tmpy+1
                if itx ~= tmpx && ity ~= tmpy && visited(itx,ity) == 0 && ((abs(knee(itx,ity) - mV)) < tollerance)
                    iStack = iStack + 1;
                    stack(iStack,1) = itx;
                    stack(iStack,2) = ity;
                    
                    segmented(itx,ity) = knee(itx,ity);
%                 elseif itx==tmpx && ity==tmpy
%                     segmented(itx,ity) = knee(itx,ity);
                end
            
                visited(itx,ity) = 1;
            end
        end    
    end
end

figure;
imshow(segmented,[]);