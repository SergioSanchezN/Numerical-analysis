function [p] = my_secant_function_sergio_sanchez(fun,p0,p1,Iter)

    for i=1:Iter
        fp0=fun(p0);
        fp1=fun(p1);
        p = p1-(fp1*(p1-p0))/(fp1-fp0);
        p0 = p1;
        p1=p;
    end

end