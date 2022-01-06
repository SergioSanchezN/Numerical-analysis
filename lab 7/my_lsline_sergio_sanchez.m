function[A, B] = my_lsline_sergio_sanchez(X,Y)
    % Se ubican cada uno de los coeficientes de la ecuacionven la matriz y el
    % vector
    C = [sum(X.^2),sum(X);sum(X),length(X)];
    D = [sum(X.*Y);sum(Y)];
    % Se resuelve la ecuacion
    x = C\D;
    % Se asignan las variables
    A=x(1);
    B=x(2);
end