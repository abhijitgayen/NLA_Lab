clc;
clear All;
close All;
close 
clear

m=5:10;
n=100;

A=diag((-2)*ones(1,n),0)+diag(ones(1,n-1),1)+diag(ones(1,n-1),-1);
for it=1:length(m)
    d1=myqr_1(A,m(it));
    d2=myqr_1(A,m(it+1));
    accu(it)=
end



