clc
fun = @(x) 1./x;
a=0.5;
b=5.2;
p0=1;
Iter=5;
P = my_fixed_point(fun,a,b,p0,Iter)

fun = @(x) 1./x;
a=0.5;
b=5.2;
P = visual_verification(fun,a,b);
