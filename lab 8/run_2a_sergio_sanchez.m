clc 
clear all
close all

format long

fun = @(x) cos(x);

x=1;

fprintf("a) h=0.05")
h = 0.05;
Error = (4*(10^-6))/(h^2) + (h^2)/12
deriv = round((fun(h+x)-2*fun(x)+fun(x-h))/(h^2)+Error,8)

fprintf("b) h=0.01")
h = 0.01;
Error = (4*(10^-6))/(h^2) + (h^2)/12
deriv = round((fun(h+x)-2*fun(x)+fun(x-h))/(h^2)+Error,8)

fprintf("c) h=0.1")
h = 0.1;
Error = (16*(10^-6))/(3*h^2) + (h^2)/90
deriv = round((-fun(x+2*h)+16*fun(x+h)-30*fun(x)+16*fun(x-h)-fun(x-2*h))/(12*h^2)+Error,8)


