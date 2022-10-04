function [softmax_out] = apply_softmax(in_array)
    prob = 0;
    max_array = [];
    for channel = 1:10
        for row = 1
            for column = 1
                max_array(channel) = in_array(row, column, channel);
            end
        end
    end
    max_in = max(max_array);
    for channel = 1:10
        for row = 1
            for column = 1
                prob = ((exp(in_array(row, column, channel))) - max_in) + prob;
            end
        end
    end

    cal_maxarray = [];
    for channel = 1:10
        for row = 1
            for column = 1
                cal_maxarray(channel) = ((exp(in_array(row, column, channel))) - max_in) / prob;
            end
        end
    end

    softmax_out = max(cal_maxarray);
end

