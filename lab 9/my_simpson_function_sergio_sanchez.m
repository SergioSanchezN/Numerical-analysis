function [I] =my_simpson_function_sergio_sanchez(fun,a,b,M)
    h=(b-a)/M;
    S2=0;
    for i=a:2*h:b-2*h
        S2=S2+h/3*(fun(i)+4*fun(i+h)+fun(i+2*h));
    end
    I=S2;
end