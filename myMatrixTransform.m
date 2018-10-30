function  C = myMatrixTransform(A)
    C = zeros(size(A));
    [m, n] = size(A);
    for j = 1:m
       for k = 1:n
           if j < k
               C(j,k) = 0;
           elseif j == k
              sum = 0;
              for x = 1:(k-1)
                  sum = sum + C(k,x) ^ 2;
              end
              C(j,k) = sqrt(A(k,k) - sum);
           else 
               sum = 0;
               for x = 1:(k-1)
                   sum = sum + C(j,x) * C(k,x);
               end
               C(j,k) = (A(j,k) - sum) / C(k,k);
           end
       end
    end
end