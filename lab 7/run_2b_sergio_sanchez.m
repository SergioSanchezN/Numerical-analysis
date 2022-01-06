clc
clear all
close all

% Puntos (x,y)
X = [-8;-2;0;4;6];
Y = [6.8;5.0;2.2;0.5;-1.3];

% Aplicacion de Least-squares Line
[A,B] = my_lsline_sergio_sanchez(X,Y);

% Funcion para aplicar los valores de X
fun = @(x) A*x+B;

x = -10:0.1:8; %Intervalo
plot(x,fun(x));
hold on
    plot(X, Y,'ok');









