function W=Wilkinson(n)

W=eye(n);
W=W+tril((-1)*ones(n),-1);
W(:,n)=ones(1,n);

end