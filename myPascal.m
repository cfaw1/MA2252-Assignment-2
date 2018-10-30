function [P] = myPascal(n)
    P = ones(n);
    for j = 2:n
        for k = 2:n
            P(j,k) = P(j,(k-1)) + P((j-1),k);
        end
    end
end