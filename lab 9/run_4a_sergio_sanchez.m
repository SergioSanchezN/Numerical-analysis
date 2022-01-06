clc 
close all
clear all

format long

fun = @(x) exp((-x^2)/2);
a=0;
b=5;
M=5;

I1 = my_trapezoidal_function_sergio_sanchez(fun,a,b,M);

RespTrapecio = 1/2+(1/sqrt(2*pi))*I1

I2 = my_simpson_function_sergio_sanchez(fun,a,b,M);

RespSimpson = 1/2+(1/sqrt(2*pi))*I2
