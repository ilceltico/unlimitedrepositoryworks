%================================================================
images=dir('*.png');
fileID = fopen('sprites_smallest.txt','wt');
for k=1:length(images)
    imgRead=imread(images(k).name);

    [height width d] = size(imgRead);
    RESULT = zeros(32,32);
    % resize image if execedes the matrix size
    scale_factor = 150;
    longest = max(width, height);
    scale = 32/scale_factor;
    if (height >= 32 || height >= 32)
%         img_width = width*scale;
%         img = imresize(imgRead, [32 img_width]);
%     elseif (width > 32 && height <= width)
%         img_height = height*scale;
%         img = imresize(imgRead, [img_height 32]);
        img_width = width*scale;
        img_height = height*scale;
        img = imresize(imgRead, [img_height img_width]);
    else 
        img = imgRead;
    end
    i=1;
    j=1;
    [height width d] = size(img);
    offset_x = 0; % round(16-(width/2));
    offset_y = 0; % round(16-(height/2));
    while j<33
        while i<33
            if( i<=width && j<=height && img(j, i)>0)  %if pixel of mask image is not black
                RESULT(j+offset_y, i+offset_x)=1;
            end
            i=i+1;
        end
        j=j+1;
        i=1;
    end
    
    % Prints to file
    fprintf(fileID, '%s\n', images(k).name);
    i,j=1;
    while j<33
        fprintf(fileID, '"');
        while i<33
            fprintf(fileID, '%d', RESULT(j, i));
            i=i+1;
        end
        if (j==32)
            fprintf(fileID, '"\n') 
        else
            fprintf(fileID, '",\n');
        end
        j=j+1;
        i=1;
    end
    fprintf(fileID, '\n');
end % end for each image in directory

fclose(fileID);


