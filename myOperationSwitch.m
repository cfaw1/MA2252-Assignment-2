function [result] = myOperationSwitch(a,b,operation)
    switch operation
        case 'plus'
            result = a + b;
        case 'minus'
            result = a - b;
        case 'mult'
            result = a .* b;
        case 'div'
            result = a ./ b;
        case 'pow'
            result = a .^ b;
        otherwise
            result = ['Unknown operation:  ''', operation,''''];
    end
end