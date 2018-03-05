function split(image,x1,y1,x2,y2)    
    global sLimit vLimit segRes index MRes
    imagePart = image(y1:y2,x1:x2);
    meanVal = mean(imagePart(:));
    stdVar = std(imagePart(:));
    
    if (stdVar < vLimit) && ((x2 - x1) <= sLimit)
        segRes(y1:y2,x1:x2) = index;
        MRes(y1:y2,x1:x2) = meanVal;
        index=index+1;
    else
        xs = floor((x2+x1)/2);
        ys = floor((y2+y1)/2);
        
        split(image,x1,y1,xs,ys);
        split(image,xs+1,y1,x2,ys);
        split(image,xs+1,ys+1,x2,y2);
        split(image,x1,ys+1,xs,y2);
    end
    
end

