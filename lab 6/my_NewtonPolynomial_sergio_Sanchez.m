function [ C ] = my_NewtonPolynomial_sergio_Sanchez(X,Y)

    C = @(t) 0;
    n=length(X);
    B=zeros(n);
    
    B(:,1)=Y(:);
    
    % Organizacion de la tabla
    for j=2:n
        for i=1:n-j+1
            B(i,j)=(B(i+1,j-1)-B(i,j-1))/(X(i+j-1)-X(i));
        end
    end
    B
    % Polinomio a partir de la tabla
    for i=1:n
        O = @(t) 1;
        if i>1       
            for k=1:i-1
                O = @(t) O(t).*(t-X(k));
            end  
        end
        C = @(t) C(t)+B(1,i).*O(t);
    end

end