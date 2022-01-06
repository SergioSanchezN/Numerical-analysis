function y0 = my_euler_function_sergio_sanchez(fun,a,b,y0,M)
h=(b-a)/M;
for i=1:M
    y0=y0+h*fun(a,y0);
    a=a+h;
end
end