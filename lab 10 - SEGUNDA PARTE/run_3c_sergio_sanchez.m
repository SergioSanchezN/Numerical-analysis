clc 
close all
clear all

format long

fun = @(t,y) exp(-2*t)-2*y;
a=0;
b=0.4;
M=2;
y0=1/10;
disp('Rk4 con h = 0.2')
Rk4_1 = my_Rk4_function_sergio_sanchez(fun,a,b,y0,M)
M=4;
disp('Rk4 con h = 0.1')
Rk4_2 = my_Rk4_function_sergio_sanchez(fun,a,b,y0,M)
disp('Respuesta')
RTA=(exp(-2*0.4))/10+0.4*exp(-2*0.4)
disp('Error relativo de Rk4 con h = 0.2')
E1=abs((RTA-Rk4_1)/RTA)
disp('Error relativo de Rk4 con h = 0.1')
E2=abs((RTA-Rk4_2)/RTA)




