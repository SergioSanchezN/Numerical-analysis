clear all
close all
clc

A = [1 2 -3 4; 4 8 12 -8; 2 3 2 1; -3 -1 1 -4];
B = [3;60;1;5];
[L,U, LU, B1] = my_lu_sergio_sanchez(A);
% Se organiza b y se halla la solucion de LY=B
Y = L\(B1*B);
% Se halla la solucion de UX=Y
X=U\Y;
n=length(X);
for i=1:n
   imp = ['x',num2str(i),':',num2str(X(i))];
   disp(imp) 
end