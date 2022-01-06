clc 
close all
clear all

format long

fun = @(x) x*log(x);
a=1;
b=2;
h=0.25;
M=(b-a)/h;

I1 = my_trapezoidal_function_sergio_sanchez(fun,a,b,M)