function [L, U, LU, B] =  my_lu_sergio_sanchez(A)

n=length(A);
% Matriz inferior
L= zeros(n);
% Matriz superior
U=A;
% Combinacion de matriz superior y matriz inferior
LU=A;
% Orden dl vector b
B = eye(n);

for p=1:n
    % Para evitar ceros en las diagonales se reacomodan las filas con un
    % ciclo while
    while U(p,p)==0
        tempL=L(p,1:n);
        tempU=U(p,1:n);
        tempLU=LU(p,1:n);
        tempB=B(p,1:n);        
        L(p,1:n)=L(p+1,1:n);
        U(p,1:n)=U(p+1,1:n);
        LU(p,1:n)=LU(p+1,1:n);
        B(p,1:n)=B(p+1,1:n);       
        L(p+1,1:n)=tempL;
        U(p+1,1:n)=tempU;       
        LU(p+1,1:n)=tempLU;
        B(p+1,1:n)=tempB;
    end
    % Ciclo para hacer la fatorizacion LU por columna  
    for r=p+1:n
        L(r, p)= U(r, p)/U(p, p); 
        LU(r, p)=L(r, p);
        for c=p:n
            U(r, c) = U(r, c)-L(r, p)*U(p, c);
            if U(r, c) ~= 0
                LU(r, c) = U(r, c);
            end          
        end
    end
    L(p,p)=1;
end
end