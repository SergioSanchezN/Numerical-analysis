clear all
close all
clc

fun = @(x) 3*(sin(pi*x/6)).^2;

X=[0;1;2;3;4];
Y=[fun(X(1));fun(X(2));fun(X(3));fun(X(4));fun(X(5))];

[ C1 ] = my_LagrangePolynomial_sergio_sanchez(X,Y);

[ C2 ] = my_NewtonPolynomial_sergio_Sanchez(X,Y);

x = -1:0.01:5; %Intervalo
plot(x,C1(x));
hold on
    plot(x,C2(x));
    plot(x, fun(x));
    plot(X, Y,'+b');




