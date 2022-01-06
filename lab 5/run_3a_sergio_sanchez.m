clear all
close all
clc

A = [1 1 0 4; 2 -1 5 0; 5 2 1 2; -3 0 2 6];
[L,U, LU] = my_lu_sergio_sanchez(A);
LU_my_lu_sergio_sanchez1 = LU
LU_comando_lu = lu(A)

A = [5 2 1 2; 2 -1 5 0; -3 0 2 6; 1 1 0 4];
[L,U, LU] = my_lu_sergio_sanchez(A);
LU_my_lu_sergio_sanchez2 = LU
LU_comando_lu = lu(A)







