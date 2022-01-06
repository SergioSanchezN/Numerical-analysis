function [p] = my_visual_newton_function_sergio_sanchez(fun,p0,der,Iter) 

    for i=1:Iter
              
        fp0 = fun(p0);
        dfp0= der(p0);
        j(i)=p0-fp0/dfp0;
        %e(i)=abs(p-p0);
        p0=j(i);
        
    end

    x=-30:0.2:30;
    p=plot(x,fun(x));
    hold on
    plot(j, -30, 'r:+');
    
end