clc;
clear All;
close All;
close 
clear

A=randn(8);
tol=10^-6;
sum_r_e=sum(abs(imag(eig(A)))<tol);
eig_val=eig(A)
sum_r_e


for it=1:1000
    A=randn(10);
    sum_r(it)=sum(abs(imag(eig(A)))<tol);
end
hist(sum_r);