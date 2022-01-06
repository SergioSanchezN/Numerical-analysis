clc 
close all
clear all

format long

x = [50000, 51000, 51050, 51100, 51150];
y = [164.87213, 169.85970, 170.11127, 170.36304, 170.61502];

%fun= @(x) (0.00026*x-0.1).^2;
%fun = @(x) (0.006*exp(0.00001.*x).*x);
fun = @(x) (26*x.^0.17);



E = ((1/5)*sum((fun(x)-y).^2))^0.5


y = sqrt(y)

x2= x.^2

xy = x.*y

sum(x)

sum(y)

sum(x2)

sum(xy)