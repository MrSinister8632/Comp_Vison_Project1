function [img_relu] = apply_relu(image_r)
   [row, column] = size(r);
   count_relu += 1
   for channel = 1:3
       for row = row
           for column = row
               imgrelu(row,column,channel) = max(r(row,column,channel),0);
           end
       end
   end
end

%function apply_relu(r)
%    [row, column] = size(r);
%    count_relu += 1
%    for channel = 1:3
%        for row = row
%            for column = row
%                imgrelu(row,column,channel) = max(r(row,column,channel),0);
%            end
%        end
%    end
%    If count_relu = 2 -> move to pool
%end