function [img_relu] = apply_relu(image_r)
    %get row and column infor.
   [row, column, channel] = size(image_r);
   for channel = 1:channel
       for row = 1:row
           for column = 1:column
               %compare each pixel with 0; take out negative number
               img_relu(row,column,channel) = max(image_r(row,column,channel),0);
           end
       end
   end
end
