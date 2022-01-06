function [c] = my_bisection_function_sergio_sanchez(fun,a,b,Iter) 

for i=1:Iter
    c=(a+b)/2;
        
    if fun(c)*fun(a)<0      
        b=c;
    elseif  fun(c)*fun(b)<0
        a=c;     
    else
        break
    end
end