function [period, a_max] = myCollatz(a0)
% Initialising variables    
    a = [a0];
    x = a0;
% Creating sequence as array    
    while (x > 1)
        if mod(x,2) == 0
            x = x / 2;
            a = [a x];
        elseif mod(x,2) == 1
            x = 3 * x + 1;
            a = [a x];
        end   
    end
% Getting output    
    period = length(a) - 1;
    a_max = max(a);
end