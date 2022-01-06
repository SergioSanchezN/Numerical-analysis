clear all
close all
clc

A = [1 1 1; 20 55 90; 1 -1 -1];
B = [300; 14050; 0];
[L,U, LU, B1] = my_lu_sergio_sanchez(A);
% Se organiza b y se halla la solucion de LY=B
Y = L\(B1*B);
% Se halla la solucion de UX=Y
X=U\Y;
n=length(X);

Prod = ["almohadas"; "mantas"; "edredones"];

for i=1:n
   imp = [Prod(i),':',num2str(X(i))];
   %imp = [Prod(i),];
   disp(imp) 
end