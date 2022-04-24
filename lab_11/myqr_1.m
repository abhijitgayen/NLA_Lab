function D=myqr_1(A,m)
n=min(size(A));
u=eps/2;
for k=n:-1:2
    for t = 1:m
        pre(k)=A(k-1,k);
        del=(A(k-1,k-1)-A(k,k))/2;
        meu =A(k,k) + del - sign(del)*sqrt(del^2+(A(k,k-1)^2));
        [q,r]=qr(A(1:k,1:k)- meu*eye(k));
        A(1:k,1:k)=r*q+meu*eye(k);
        con(k)=A(k-1,k);
    end
    if(abs(A(k,k-1))> u*(abs(A(k-1,k-1)+A(k,k))))
        A(k,k-1)=0;
        A(k-1,k)=0;
    end
    
end
acc=[pre;con]
D=A;