clc
close all

fun = @(x) x.^3+13*x.^2-297.5*x+0.00000375*exp(x);
der = @(x) 3*x.^2+26*x-297.5+0.00000375*exp(x);
p0 = 5;
iter=40;
root=my_visual_newton_function_sergio_sanchez(fun,p0,der,Iter);