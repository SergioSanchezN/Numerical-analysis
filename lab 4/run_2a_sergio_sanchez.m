clc
clear all
close all

fun = @(x) exp(x)-x.^2;
p0 = 5;
p1 = 7;
Iter=16;
root=my_secant_function_sergio_sanchez(fun,p0,p1,Iter)
