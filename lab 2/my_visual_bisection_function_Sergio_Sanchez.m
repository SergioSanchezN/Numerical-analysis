function [grafica] = my_visual_bisection_function_Sergio_Sanchez(fun, a, b, iter)

    i = 1;
    for k = 1:iter
        pa(i) = a;
        pb(i) = b;
        i = i+1;
        c = (a+b)/2;
        if fun(c)*fun(b)<0
            a = c;
            pa(i) = a;
        elseif fun(c)*fun(a)<0
            b = c;
            pb(i) = b;
        else    
            break
        end
    end
    x = 0:0.01:15; %Intervalo
    y = fun(x);
    grafica = plot(x,y,':');
    hold on
    plot(pa, 0, 'r:+');
    plot(pb,0,'b:+');
    
end