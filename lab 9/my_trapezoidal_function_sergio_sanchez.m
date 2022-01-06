function [I] = my_trapezoidal_function_sergio_sanchez(fun,a,b,M)
    h=(b-a)/M;
    S1=0;
    for i=a:h:b-h
        S1=S1+h/2*(fun(i)+fun(i+h));
    end
    I=S1;
end