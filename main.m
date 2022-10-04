load 'cifar10testdata.mat'
load 'debuggingTest.mat'
load 'CNNparameters'

%set image_load to the image expected to be the input:
%For example: image_load = imread('image.jpg');
image_load;
doubled_img = image_input(image_load);

%passing the input image to normalization
apply_imnormalize(doubled_img)


