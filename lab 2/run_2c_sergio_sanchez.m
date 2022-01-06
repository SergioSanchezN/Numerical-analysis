clear all
clc
close all

fun = @(x) (x-8)*(x-3)^2;
a=6.35;
b=9.16;

for i=1:1:5

    error=10^(-(2*i));
    Nteorico(i) = round((log(b-a)-log(error))/log(2)+1);

    k = 0;
    errorteorico = 1;
    while errorteorico >= error
        k=k+1;
       
        ck = my_bisection_function_sergio_sanchez(fun,a,b,k);
        ck1 = my_bisection_function_sergio_sanchez(fun,a,b,k+1);
        
        errorteorico = abs((ck-ck1)/ck);       
    end
    Nexperimental(i)=k;
end

root = my_bisection_function_sergio_sanchez(fun,a,b,k);

g=[Nteorico; Nexperimental]';
x = 2:2:10;
bar(x,g);
ylabel('N iteraciones');
xlabel('Error');
errores = {'1e^{-2}';'1e^{-4}';'1e^{-6}';'1e^{-8}';'1e^{-10}'};
set(gca,'xtick',x,'xticklabel',errores);
legend('Iteración teórica', 'Iteración practica', 'Location', 'northwest');
fprintf('La raíz de la función es:')
root




