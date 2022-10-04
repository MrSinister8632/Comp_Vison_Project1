function output = apply_maxpool(input)
    % Find dimensions of the image
    imgSize = size(input);
    channels = imgSize(3);
    
    % Create new dimensions 
    output = zeros(imgSize(1)/2,imgSize(1)/2,imgSize(3));
    
    for i = 1:channels
        curChannel = input(:,:,i);
        
        % Create 4 arrays, split by 2x2 sections in orignal image
        topLeft = curChannel(1:2:end,1:2:end);
        topRight = curChannel(1:2:end,2:2:end);
        botLeft = curChannel(2:2:end,1:2:end);
        botRight = curChannel(2:2:end,2:2:end);
        
        topMax = max(topLeft,topRight);
        botMax = max(botLeft,botRight);
        
        output(:,:,i) = max(topMax,botMax);
    end
end