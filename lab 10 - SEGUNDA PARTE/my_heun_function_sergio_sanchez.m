function y0 = my_heun_function_sergio_sanchez(fun,a,b,y0,M)
h=(b-a)/M;
for i=1:M
    y=y0+h*fun(a,y0);
    a=a+h;
    y0=y0+(h/2)*(fun(a-h,y0)+fun(a,y));
end

end

