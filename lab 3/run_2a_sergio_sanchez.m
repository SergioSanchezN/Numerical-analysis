clc

% funcion  my_newton_function_sergio_sanchez() 
fun = @(x) x.^3+13*x.^2-297.5*x+0.00000375*exp(x);
der = @(x) 3*x.^2+26*x-297.5+0.00000375*exp(x);
p0 = 15;
iter=10;
root1 = my_newton_function_sergio_sanchez(fun,p0,der,iter)

% funcion  my_newton_function_sergio_sanchez()
my_newton_function_sergio_sanchez_mod(fun,p0,der,Iter);