[img, map] = imread("rgbcolor.png");
imgrgb = ind2rgb(img, map);

%r = imgrgb(:,:,1);
%g = imgrgb(:,:,2);
%b = imgrgb(:,:,3);


%Image normalization
%for c = 1:3
%    for b = 1:360
%        for a = 1:360
%            imgnorm(a,b,c) = imgrgb(a,b,c)/(255-0.5);
%        end
%    end
%end

%ReLU
%for c = 1:3
%    for b = 1:360
%        for a = 1:360
%            imgrelu(a,b,c) = max(imgrgb(a,b,c),0);
%        end
%    end
%end

%Maxpool
%for c = 1:3
%    for b = 1:360
%        for a = 1:360
%            imgmaxpool(a,b,c) = imgmaxpool(a,b,c)/(255-0.5);
%        end
%    end
%end
imshow(imgrgb);
