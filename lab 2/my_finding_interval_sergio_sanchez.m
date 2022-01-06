function [a, b] = my_finding_interval_sergio_sanchez(fun)

    fa=1;   %variable para la evaluacion de 'a' en la funcion
    fb=fa;  %variable para la evaluacion de 'b' en la funcion
    i=0;    
    
    % Buscamos los valores de a y b tal que: 
    %  - f(a) tenga diferente signo que f(b)
    %  - f(a) ó f(b) sea igual a cero
    %  - f(a) y f(b) sean reales
    while (((fa>=0&&fb<0)||(fa<=0&&fb>0))&&(imag(fa)==0&&imag(fb)==0)) == false
        a=i;
        fa=fun(a);
        b=a+2;
        fb=fun(b);                
        i=i+0.5;
        
        % Se coloca esta condicion para hacer un corte en la iteraciones
        if i==1000
            disp('Tiempo exedido, no se ha encontrado respuesta')
            a = NaN;
            b = NaN;
            break
        end
        
        % Condicion para evitar parabolas que cortan con el eje x
        if ((fa == 0)&&(fun(a-0.1)*fun(a+0.1)>0))||((fb == 0)&&(fun(b-0.1)*fun(b+0.1)>0))
            fa = 1;
            fb = 1;
        end
    end 
end