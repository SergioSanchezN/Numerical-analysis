clear all
close all
clc

A = [1 1 0 4; 2 -1 5 0; 5 2 1 2; -3 0 2 6];
[L,U, LU] = my_lu_sergio_sanchez(A);
L
U
% comprobacion 
LxU=L*U



