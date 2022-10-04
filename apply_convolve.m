function output = apply_convolve(img, filterBank, biasVect)   
    % Find d1
    imgSize = size(img);
    d1 = imgSize(3);
    
    % Find d2
    filterBankSize = size(filterBank);
    d2 = filterBankSize(4);
    
    % Initialize ouput size
    output = zeros(inSize(1),inSize(1),d2);

    for l = 1:d2
        filterl = filterBank(:,:,:,l);
        sum = imfilter(img(:,:,1),filterl(:,:,1),'conv','same');

        for k = 2:d1
            sum = sum + imfilter(img(:,:,k),filterl(:,:,k),'conv','same');
        end
        
        output(:,:,l) = sum + biasVect(l);
    end
end