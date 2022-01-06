function [salida] = my_fixed_point(fun,a,b,p0,Iter)
    salida = p0;
    for i = 1:Iter
        salida = fun(salida);   
    end
end
