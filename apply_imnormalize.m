function [img_norm] = apply_imnormalize(image_n)
    %get size infor. of input image
    [row, column] = size(image_n);
    for channel = 1:3
       for row = row
           for column = column
               %performing normalization
               img_norm(row,column,channel) = image_n(row,column,channel)/(255-0.5);
           end
       end
    end
end
