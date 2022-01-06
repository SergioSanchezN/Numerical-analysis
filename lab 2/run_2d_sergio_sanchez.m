clear all
close all
clc
fun = @(x) log(x-4); %
a=4.5;
b=7;
iter = 10;
my_visual_bisection_function_Sergio_Sanchez(fun, a, b, iter);