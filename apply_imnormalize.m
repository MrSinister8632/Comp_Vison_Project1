function [img_norm] = apply_imnormalize(image_n)
    im = double(n);
    [row, column] = size(im);
    for channel = 3
       for row = row
           for column = column
               img_norm(row,column,channel) = im(row,column,channel)/(255-0.5);

           end
       end
    end
end

% function apply_imnormalize(n)
%     im = double(n);
%     [row, column] = size(im);
%     for channel = 3
%        for row = row
%            for column = column
%                imgnorm(row,column,channel) = im(row,column,channel)/(255-0.5);
%
%            end
%        end
%     end
%     imshow(imgrgb);
% end