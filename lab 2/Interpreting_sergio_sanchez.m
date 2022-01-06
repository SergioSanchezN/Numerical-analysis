clear all
close all
clc
fun = @(x) 1500*exp(x)+(475*(exp(x)-1))/x-2264; 
a=0.01;
b=1;
iter = 10;
my_visual_bisection_function_Sergio_Sanchez(fun, a, b, iter);
r = my_bisection_function_sergio_sanchez(fun,a,b,iter)