function [result] = myOperation(a,b,operation)
    if strcmp(operation,'plus')
        result = a + b;
    elseif strcmp(operation,'minus')
        result = a - b;
    elseif strcmp(operation,'mult')
        result = a .* b;
    elseif strcmp(operation,'div')
        result = a ./ b;
    elseif strcmp(operation,'pow')
        result = a .^ b;
    else
        result = ['Unknown operation:  ''', operation,''''];
    end
end