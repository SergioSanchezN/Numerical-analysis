clear all
close all
clc

A = [1 -1 -1; 0 1 -2; 10 15 40];
[L,U, LU] = my_lu_sergio_sanchez(A);
L
U
% comprobacion 
LxU=L*U