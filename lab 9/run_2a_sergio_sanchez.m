clc 
close all
clear all

%3.1) aplicacion
%   a)
fun = @(x) x*log(x);
a=1;
b=2;
h=0.25;
S1=0;
for i=a:h:b-h
    S1=S1+h/2*(fun(i)+fun(i+h));
end
S1

%   a)
fun = @(x) x*log(x);
a=1;
b=2;
h=0.25;
S2=0;
for i=a:2*h:b-2*h
    S2=S2+h/3*(fun(i)+4*fun(i+h)+fun(i+2*h));
end
S2
