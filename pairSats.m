function [Pairs] = pairSats(num)
    Pairs = [];
    for k = 1:num
        for l = 1:k
            if ~(l==k)
                Pairs = [Pairs; [k l]];
            end
        end
    end
end