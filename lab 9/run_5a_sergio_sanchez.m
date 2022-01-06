clc 
close all
clear all

format long

fun = @(x) -(x^3/3)+20*x^2-300*x+2000;
a=5;
b=12;
M=29;

I1 = my_trapezoidal_function_sergio_sanchez(fun,a,b,M);

RespTrapecio = I1/(12-5)

I2 = my_simpson_function_sergio_sanchez(fun,a,b,M);

RespSimpson = I2/(12-5)