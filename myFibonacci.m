function [fn] = myFibonacci(n)
    fn = zeros(1,n);
    fn(1:2) = 1;
    for j = 3:n
        fn(j) = fn(j-1) + fn(j-2);
    end
end