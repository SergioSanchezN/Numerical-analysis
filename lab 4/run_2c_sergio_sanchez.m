clc
clear all
close all 

m=20;
k=2;
angulo=50*(pi/180);
C=m/k;
V0=160;
Vx=V0*cos(angulo);
Vy=V0*sin(angulo);

fun= @(t) (C*Vy+32*C.^2)*(1-exp(-1*t./C))-32.*t*C;
p0=11;
p1=10;
Iter =6;
root=my_secant_function_sergio_sanchez(fun,p0,p1,Iter)

fun= @(t) C*Vx*(1-exp(1)^(-t/C));

dist=fun(root)
%root=my_secant_function_sergio_sanchez(fun,p0,p1,Iter)



