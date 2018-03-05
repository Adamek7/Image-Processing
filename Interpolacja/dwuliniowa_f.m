function [ ] = dwuliniowa_f( Img, xScale, yScale )

%metodą dwuliniową nieskończona



I = (imread(Img));


xReScale = xScale;
yReScale = yScale;
 
[YY,XX] = size(I);

nYY = round(YY * yReScale);
nXX = round(XX * xReScale);

nI = double(zeros(nYY,nXX));

xStep = XX / nXX;
yStep = YY / nYY;

for jj = 0:(nYY-1)
    nj = (jj*yStep);
    for ii = 0:(nXX-1)
        ni = (ii*xStep);
        
        
        if (ni>XX-2)
            ni = XX-2;
        end;
        if (nj>YY-2)
            nj = YY-2;
        end;
        i = floor(ni);
        j = floor(nj);
        di = ni - i;
        dj = nj - j;
        
        A = I(j+1,i+1);
        B = I(j+1,i+2);
        C = I(j+2,i+2);
        D = I(j+2,i+1);
        
        nI(jj+1,ii+1) = A*(1-di)*(1-dj) + B*di*(1-dj) + C*di*dj + D*(1-di)*dj;
    end
    
end

figure('Name','Dwuliniowa','NumberTitle','off');
imshow(uint8(nI));


end

