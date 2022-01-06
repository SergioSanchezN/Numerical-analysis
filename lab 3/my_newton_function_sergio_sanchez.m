function [root] = my_newton_function_sergio_sanchez(fun, p0, der, iter)

    for i=1:iter
        fp0 = round(fun(p0),5);
        dfp0= round(der(p0),5);
        p0=p0-fp0/dfp0;
      
    end
    root=p0;
end