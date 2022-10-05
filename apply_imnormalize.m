function [img_norm] = apply_imnormalize(image_n)
    %get size infor. of input image
    [row, column, channel] = size(image_n);
    for channel = 1:channel
       for row = 1:row
           for column = 1:column
               %performing normalization
               img_norm(row,column,channel) = image_n(row,column,channel)/(255-0.5);
           end
       end
    end
end
