clear all
close all
clc

format long
%{
fun = @(x) 3*(sin(pi*x/6)).^2;

X=[6;7;8;9;10];
Y=[0.21666;0.15918;0.12187;0.09629;0.07800];

[ C1 ] = my_NewtonPolynomial_sergio_Sanchez(X,Y);

Newton = func2str(C1)



x = [0.5; 0.8; 1.1; 1.8; 4];
y = [7.1; 4.4; 3.2; 1.9; 0.9];


x = [0.7; 0.9; 1.1; 1.6; 3];
y = [8.1; 4.9; 3.3; 1.6; 0.5];


x1=round(x.^-1,5);

x1y=round(x1.*y,5)

sum(x1y)

x2=round(x.^-2,5)

sum(x2)

E = sum(((sum(x1y)/sum(x2))*x.^1-y).^2)


x2y=round(x2.*y,5)

sum(x2y)

x3=round(x.^-3,5)

sum(x3)

E = sum(((sum(x2y)/sum(x3))*x.^2-y).^2)



x = [-6; -2; 0; 2; 6];
y = [-5.3; -3.5; -1.7; 0.2; 4];

x2=round(x.^2,5)

xy=round(x.*y,5)

sum(x)
sum(y)
sum(x2)
sum(xy)

E = sum((0.79*x-1.26-y).^2)

%}


x = [-2; -1; 0; 1; 2];
y = [2.8; 2.1; 3.25; 6; 11.5];

x4=round(x.^4,5)
sum(x4)
x3=round(x.^3,5)
sum(x3)
x2=round(x.^2,5)
sum(x2)

x2y=round(x2.*y,5)
sum(x2y)
xy=round(x.*y,5)
sum(xy)

E = sum((x.^2+2.13*x+3.13-y).^2)



