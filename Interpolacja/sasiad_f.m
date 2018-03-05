function [  ] = sasiad_f( Img, xScale, yScale)
    
    I = imread(Img);


    xReScale = xScale;
    yReScale = yScale;

    [YY,XX] = size(I);

    nYY = round(YY * yReScale);
    nXX = round(XX * xReScale);

    nI = uint8(zeros(nYY,nXX));

    xStep = XX / nXX;
    yStep = YY / nYY;

    for jj = 0:(nYY-1)
        for ii = 0:(nXX-1)
            i = round(ii*xStep);
            j = round(jj*yStep);
            if (i>XX-1)
                i = XX-1;
            end;
            if (j>YY-1)
                j = YY-1;
            end;
            nI(jj+1,ii+1) = I(j+1,i+1);
        end

    end

    figure('Name','Sasiad','NumberTitle','off');
    imshow((nI));
end

