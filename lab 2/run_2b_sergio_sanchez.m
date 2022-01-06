clear all
clc
close all

fun = @(x) log(x)-4;
a=54;
b=55;
Iter=20;
root = my_bisection_function_sergio_sanchez(fun,a,b,Iter)