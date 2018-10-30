function [m,k] = myMax2(A)
    n = length(A);
    m = A(1);
    k = 1;
    for j = 1:n
        if A(j) > m
            m = A(j);
            k = j;
        end
    end
end