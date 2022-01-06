function [p] = my_newton_function_sergio_sanchez_mod(fun, p0, der, iter)

    for i=1:iter
              
        fp0 = fun(p0);
        dfp0= der(p0);
        p=p0-fp0/dfp0;
        s=abs(p-p0);
        p0=p;
        strcat('iteracion   :',num2str(i))
        strcat('x_k         :',num2str(p0))
        strcat('f(x_k)      :',num2str(fp0))
        strcat('f´(x_k)     :',num2str(dfp0))
        strcat('|x_k-x_k-1| :',num2str(dfp0))
    end

end