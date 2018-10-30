function [m] = myMax(A)
    n = length(A);
    m = A(1);
    for j = 1:n
        if A(j) > m
            m= A(j);
        end
    end
end