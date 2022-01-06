clc

fun = @(x) 1+2./x;
a=1;
b=5;
P = visual_verification(fun,a,b);

p0=4;
Iter=100;
P = my_fixed_point(fun,a,b,p0,Iter)
