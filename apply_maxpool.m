function [img_maxpool] = apply_maxpool(image_m)
    [row, column] = size(m);
    count_pool += 1;
    for channel = 1:3
      for row = row
          for column = row
              img_maxpool(row,column,channel) = m(row,column,channel)/(255-0.5);
          end
      end
    end
end

%function apply_maxpool(m)
%    [row, column] = size(m);
%    #count_pool += 1;
%    for channel = 1:3
%        for row = row
%            for column = row
%                imgmaxpool(row,column,channel) = m(row,column,channel)/(255-0.5);
%            end
%        end
%    end
%    #set count_conv = 0;
%    #set count_relu = 0;
%    #move to conv
%    #If count_pool = 3 -> stop and continue
%end