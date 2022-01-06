function [salida] = visual_verification(fun,a,b)
x = a:0.2:b;
y = fun(x);

salida = plot(x,y);

hold on

plot(x,x,':')
legend('función','x')

hold off
end