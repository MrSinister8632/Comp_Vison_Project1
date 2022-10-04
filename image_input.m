%image input handle
function [image_double] = image_input(image_in)
    image_double = imread(image_in);
    image_double = double(image_double);
end

