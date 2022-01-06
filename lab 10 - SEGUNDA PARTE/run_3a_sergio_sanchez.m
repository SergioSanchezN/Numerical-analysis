clc 
close all
clear all

format long


fun = @(t,y) -y;
a=0;
b=1;
M=5;
y0=300;
resultado = my_euler_function_sergio_sanchez(fun,a,b,y0,M)