function[x]= point_function_sergio_Sanchez()
    numero=input('Ingrese el numero que desea convertir a binario ');
    num_E = floor(numero);          % Parte entera
    num_D = numero - floor(numero); % Parte decimal


    % Calculo de parte entera
    E_bin = zeros (1, 32);     % Vector de la parte entera del binario.
    i1=0;                      % Variable para recorrer el vector.
    while num_E > 0 && i1 < 32    
        res = mod(num_E,2);    % Residuo de las diviciones.
        num_E = floor(num_E/2);% Cosiente de la divición.
        if res > 0
            E_bin(32-i1) = 1;  % Si hay residuo se coloca un 1 en el vector.
        end                    
        i1=i1+1;               % Se aumenta la variable .
    end
    exp=i1-1;                  % El exp es igual al ancho de la parte entera 
                               % menos 1.

    % Calculo de parte decimal
    D_bin = zeros (1, 32);      % Vector de la parte decimal del binario.
    i2=1;                       % Variable para recorrer el vector.
    while num_D ~= 0 && i2 < 32 
        num_D = num_D*2;        % El numero decimal.
        if num_D >= 1
           D_bin(i2) = 1;       % Si el numero decimal es mayor o igual que 1
                                % se coloca un 1 en el vector.
           num_D = num_D-1;     % Se le resta 1 al numero decimal.
        end   
        i2 = i2+1;              % Se aumenta la variable de recorrido.
    end

    %sacar signo
    if numero < 0              % Si el numero inicial es menor que 0 el signo 
       signo = 1;              % es 1 y si no el signo es cero.
    else
       signo = 0;
    end
    


    %sacar mantissa
    mantissa = zeros(1, 23);         % La mantissa se obtiene tomando las 
    var = exp-1;                     % ultimas cifras del vector de enteros,
    a=1;                             % luego tomando las primeras cifras
    for i = 1:23                     % del vector de decimales.
        if var >= 0
            mantissa(i) = E_bin(32-var);
            var = var-1;  
        else
            mantissa(i) = D_bin(a);
            a = a+1;
        end 
    end
    

    %sacar exponente
    exponente = zeros(1, 8);

    exp_b_10 = 127+exp;            % tomamos el exponente y lo sumamos al bias,
                                   % luego repetimos el proceso anterior para
                                   % convertirlo a binario dentro de un vector.
    i3=0;
    while exp_b_10 > 0 && i3 < 8    
        res = mod(exp_b_10,2);
        exp_b_10 = floor(exp_b_10/2);
        if res > 0
            exponente(8-i3) = 1;
        end
        i3=i3+1;
    end
    signo
    exponente 
    mantissa
    
    x = [signo exponente mantissa];
end

