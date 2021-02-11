
function [y] = gauss_jordan (x)    
    for n = 1:(length(x)-1)
        % Step 1: make the row N's Nth term 1 by dividing 
        % the whole row by it
        A = x(n,:);
        A = A/A(n);
        x(n,:) = A;
        
        % Step 2: for every other row add to it -1 * that rows Nth term *
        % the Nth row
        for k = 1:(length(x)-1)
            if n~=k
                x(k,:) = A*(-1*x(k,n)) + x(k,:);
            end
        end
    end
    
    y = x(:,length(x))';
end