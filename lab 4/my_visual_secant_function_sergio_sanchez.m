function [grafica] = my_visual_secant_function_sergio_sanchez(fun,p0,p1,Iter)

x = -5:0.01:5; %Intervalo
y = fun(x);
grafica = plot(x,y,':');

for i=1:Iter
    p= p1 -(fun(p1)*(p1-p0))/(fun(p1)-fun(p0));
    p0 = p1;
    p1=p;
    hold on
    scatter(p0,fun(p0));
    it=int2str(i);
    text(p0,fun(p0),strcat('r',it))
    if fun(p1) == 0
        disp("raiz encontrada")
        break
    end
    pause
end

end


