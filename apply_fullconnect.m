function output = apply_fullconnect(img, filterBank, biasVect)

% Find d1
imgSize = size(img);
d1 = imgSize(3);

% Find d2
filterBankSize = size(filterBank);
d2 = filterBankSize(4);

output = zeros(1,1,10);

% Apply filter of same size to each dimension of image
for i = 1:d2
        sum = 0;
    for j = 1:imgSize(1)
        for k = 1:imgSize(2)
            for l = 1:d1
                piece = img(j, k, l);
                filterl = filterBank(j, k, l, i);
                sum = sum + imfilter(piece,filterl,'conv','same');
            end
        end
    end
    output(1,1,i) = sum + biasVect(i);
end
end