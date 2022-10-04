function [img_conv] = apply_convolve(image_c)
    img_conv = imfilter(image_c,filterbanks,same);
end

%apply_convolve(imgrgb);
%function apply_convolve(c)
%    layer = conv(row,column,channel);
%   
%end