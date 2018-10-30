function out = myIsPrime(n)
out = 1;
k = 3;

if n == 1
    out = 0;
elseif n == 2
    out = 1;
elseif mod(n,2) == 0
    out = 0;
else
   while k <= sqrt(n)
       if mod(n,k) == 0
           out = 0;
           break
       else
           k = k + 2;
       end
   end
end
                   