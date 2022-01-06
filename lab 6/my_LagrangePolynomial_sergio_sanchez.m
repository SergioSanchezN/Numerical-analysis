function [ C ] = my_LagrangePolynomial_sergio_sanchez(X,Y)


C = @(t) 0;
for i=1:length(X)
    Iter = @(t) 1;
    for j=1:length(X)
        if j~=i
            Iter = @(t) Iter(t).*(t-X(j))/(X(i)-X(j));
        end
    end      
    C = @(t) C(t)+Y(i).*Iter(t);
end

end
