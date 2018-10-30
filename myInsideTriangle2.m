function [result] = myInsideTriangle2(a,b,c,p)

% Checking all inputs are 1x2 arrays
    if not(isequal(size(a),[1 2]) && isequal(size(b),[1 2]) && ...
            isequal(size(c),[1 2]) && isequal(size(p),[1 2]))
        result = 'Please use 1x2 arrays only';
    else
        
% Finding areas of triangles
    ABC = TriangleArea(a,b,c);
    APB = TriangleArea(a,p,b);
    APC = TriangleArea(a,p,c);
    BPC = TriangleArea(b,p,c);

% Determining where the point is by comparing areas
        if ABC == (APB + APC + BPC)
            if APB == 0 || APC == 0 || BPC == 0
                result = 'border';
            else
                result = 'inside';
            end
        else
            result = 'outside';
        end
    end
end

%Subfunction to find triangle areas
function [A] = TriangleArea(a,b,c)
    A = abs((a(1)*(b(2)-c(2)) + b(1)*(c(2)-a(2)) + c(1)*(a(2)-b(2)))/2);
end

