load 'cifar10testdata.mat'
load 'debuggingTest.mat'
load 'CNNparameters'

 % Find the number of images in the set
 imageSetSize = size(imageset);
    
 result = zeros(1,1,10,imageSetSize(4));
 
 for imageIndex = 1:imageSetSize(4)
     c = sprintf('image %d',imageIndex);
     disp(c);
     
     im = double(imageset(:,:,:,imageIndex));
     
     im = apply_imnormalize(im);
     
     im = apply_convolve(im,filterbanks{2}, biasvectors{2});
     
     im = apply_relu(im);
     
     im = apply_convolve(im,filterbanks{4}, biasvectors{4});
     
     im = apply_relu(im);
     
     im = apply_maxpool(im);
     
     im = apply_convolve(im,filterbanks{7}, biasvectors{7});
     
     im = apply_relu(im);
     
     im = apply_convolve(im,filterbanks{9}, biasvectors{9});
     
     im = apply_relu(im);
     
     im = apply_maxpool(im);
     
     im = apply_convolve(im,filterbanks{12}, biasvectors{12});
     
     im = apply_relu(im);
     
     im = apply_convolve(im,filterbanks{14}, biasvectors{14});
     
     im = apply_relu(im);
     
     im = apply_maxpool(im);
    
     im = apply_fullconnect(im,filterbanks{17}, biasvectors{17});
     
     im = apply_softmax(im);
     
     % Generate result
     result(:,:,1:10,imageIndex) = im(:,:);    
end