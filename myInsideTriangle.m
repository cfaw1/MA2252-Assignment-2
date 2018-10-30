function [S] = myInsideTriangle(x,y)   
    if (x > 0) && (y > 0) && (x + y < 1)
        S = 'inside';
    elseif (x < 0) || (y < 0) || (x + y > 1)
        S = 'outside';
    else
        S = 'border';
    end
end