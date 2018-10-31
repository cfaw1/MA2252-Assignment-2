function [period, a_max] = myCollatz(a0)   
    x = a0;
    period = 0;
    a_max = a0;
    
    while (x > 1)
        if mod(x,2) == 0
            x = x / 2; 
        elseif mod(x,2) == 1
            x = 3 * x + 1;
            if x > a_max
                a_max = x;
            end           
        end
        period = period + 1;
    end  
    
end
