clc;
clear ;
close All;

n=input('Enter n:');
m=input('Enter m:');
A=10*rand(m,n);

[U,V,D]=mysvd(A);