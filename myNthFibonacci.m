function fn = myNthFibonacci(n)
    a = 1;
    b = 1;
    fn = 1;
    
    if n <= 0;
        fn = 'Please use an integer greater than 0';
    elseif n > 2
        for j = 3:n
            b = a;
            a = fn;
            fn = a + b;
        end
    end        
end