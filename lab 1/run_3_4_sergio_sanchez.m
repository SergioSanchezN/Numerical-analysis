clc
fun = @(x) 4.8*log(x);
a=5;
b=15;
P = visual_verification(fun,a,b);

p0=10;
Iter=15;
P = my_fixed_point(fun,a,b,p0,Iter)
