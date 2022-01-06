clc
clear all
close all

% Puntos (x,y)
X = [-8;-2;0;4;6];
Y = [6.8;5.0;2.2;0.5;-1.3];

% Aplicacion de Least-squares Line
[A,B] = my_lsline_sergio_sanchez(X,Y);

% Mostrar la funcion Ax+B
f = [num2str(A),'x + ',num2str(B)];
disp('función:');
disp(f);

% Funcion para aplicar los valores de X
fun = @(x) A*x+B;

% Mostrar el error
E = ((sum(abs(fun(X(:))-Y).^2))/length(X))^(0.5);
disp('      ')
disp('Error:')
disp(E)









