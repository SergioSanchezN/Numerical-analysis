function [y0] = my_Rk4_function_sergio_sanchez(fun,a,b,y0,M)

h=(b-a)/M;
x=a;
for i=1:M
   f1=fun(x, y0);
   f2=fun(x+(h/2),y0+(h/2)*f1);
   f3=fun(x+(h/2),y0+(h/2)*f2);
   f4=fun(x+h,y0+h*f3);
   
   y0=y0+h*(f1+2*f2+2*f3+f4)/6;
   x=x+h;
end
end