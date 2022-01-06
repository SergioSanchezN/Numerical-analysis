clc

fun = @(x) log(x+5)+3;
a=0;
b=10;
P = visual_verification(fun,a,b);
 
p0=4;
Iter=10;
P = my_fixed_point(fun,a,b,p0,Iter)
