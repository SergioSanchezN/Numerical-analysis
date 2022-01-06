function [x1,x2] = improving_the_quadratic_formula()
    a=input('Ingrese a: '); % se piden los valores de a, b y c
    b=input('Ingrese b: ');
    c=input('Ingrese c: ');
    
    Raiz = (b^2-4*a*c)^0.5;         % Raíz es un variable para que se 
                                    % repite en varias veces.    
   
    Error = (abs(b-Raiz)/Raiz)*100; % Se busca saber el % error 
    
    % Si el porcentaje de error es menor a 1% quiere decir que la Raiz y b  
    % son aproximadamente iguales, entonces se toman las condiciones
    % para no perder precicion.
    if Error <= 1
        if b > 0
            x1 = (-2*c)/(b+Raiz)
            x2 = (-b-Raiz)/(2*a)
        else
            x1 = (-b+Raiz)/(2*a)
            x2 = (-2*c)/(b-Raiz)
        end        
    else
        % Si el error es mayor a 1 se calcula con la forma tradicional
        x1 = (-b+Raiz)/(2*a)
        x2 = (-b-Raiz)/(2*a)
    end 
end