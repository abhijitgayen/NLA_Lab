clc;
clear All;
close All;
clear;

n=input("Enter n:");
A=magic(n);
p = randperm(n);
q = randperm(n);
A = A(p,q);

sumA=sum(A)
SumAT=sum(A')'
sumdiag=sum(diag(A))
sumdiagf=sum(diag(flipud(A)))
rankA=rank(A)



A=magic(4);
nullA=null(A)
NullA_R=null(A,'r')
NULLAsym=null(sym(A))
rrefA=rref(A)

%three independent columns. and also three independent row.