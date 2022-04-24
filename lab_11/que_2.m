clc;
clear All;
clear All;
clear
close

n=100;
A=diag((-2)*ones(1,n),0)+diag(ones(1,n-1),1)+diag(ones(1,n-1),-1);

D=myqr_1(A,50);
eig_myqr=sort(diag(D));
eig_val=sort(eig(A));
eig_v=[eig_myqr,eig_val,abs(eig_myqr-eig_val)]
a=sum(abs(eig_myqr-eig_val) > (eps/2))