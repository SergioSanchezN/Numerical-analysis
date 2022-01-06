clc 
clear all
close all

%  a)
% funcion y valor de x
fun1 = @(x) 60*x^45-32*x^33+233*x^5-47*x^2-77;
x=1/sqrt(3);
% valores encontrados para h y max
h=0.023;
max1=6;
fprintf("a) h=0.023 max1=6")
[L, n]= difflim(fun1,x,1e-13,h,max1)

%  b)
% funcion y valor de x
fun2 = @(x) tan(cos((sqrt(5)+sin(x))/(1+x^2)));
x=(1+sqrt(5))/3;
% valores encontrados para h y max
h=0.0110310301002;
max1=7;
fprintf("b) h=0.0110310301002 max1=7")
[L, n]= difflim(fun1,x,1e-13,h,max1)