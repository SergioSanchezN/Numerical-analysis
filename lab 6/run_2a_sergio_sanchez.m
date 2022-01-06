clear all
close all
clc

fun = @(x) 3*(sin(pi*x/6)).^2;

X=[0;1;2;3;4];
Y=[fun(X(1));fun(X(2));fun(X(3));fun(X(4));fun(X(5))];

[ C1 ] = my_NewtonPolynomial_sergio_Sanchez(X,Y);

Newton = func2str(C1)

[ C2 ] = my_LagrangePolynomial_sergio_sanchez(X,Y);

Lagrange = func2str(C2)