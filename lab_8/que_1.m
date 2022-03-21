clc;
clear All;
close ;
m=7;
n=4;
A=randn(m,n);

[U,D,V]=svd(A);
tol=max(m,n)*(norm(A,2))*eps;

rk=0;
while(1)
    if rk+1>min(m,n)
        break;
    else
        if D(rk+1,rk+1) > tol
        rk=rk+1;
        end
    end
end
disp(rk);

A(:,5:6) = A(:,2:3) +A(:,3:4); 
disp(rank(A));