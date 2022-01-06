clc
clear all
close all

% Puntos (x,y)
T = [87.97;224.70;365.26;686.98;4332.59;10759.22;30685.40;60189.00];
R = [57.91;108.70;149.60;227.92;778.57 ;1433.53 ;2872.46 ;4495.06 ];

% Convercion de unidades
T(:)=T(:).*86400;
R(:)=R(:).*10^9;

% linealizacion de la funcion
Y(:)=log10(T(:).^2);
X(:)=log10(R(:).^3);

% Aplicacion de Least-squares Line
[A,B] = my_lsline_sergio_sanchez(X,Y);

% Mostrar la funcion Ax+B
f = [num2str(A),'x',num2str(B)];
disp('función:');
disp(f);

% Grafica
P = ["  Mercurio","  Venus","  Tierra","  Marte","  Jupiter","  Saturno","  Urano","  Neptuno"];

fun = @(x) A.*x+B;
x = 30:40;
plot(x,fun(x));
hold on
plot(X, Y, 'or')
text(X, Y, P);


% Sacar el valor de C
C=10^B;

% G experimental y teorico

Gexp=(4*pi^2)/(C*1.989*10^30);
Gteo=6.674*10^-11;

% Sacar el error realtivo

E=abs((Gteo-Gexp)/Gteo);
disp('      ')
disp('Error relativo:')
disp(E)













