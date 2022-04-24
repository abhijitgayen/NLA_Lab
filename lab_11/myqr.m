function [D,NN] =myqr(A,m)
n=min(size(A));
  
NN = [ A(n,n-1), A(n,n) ];
 
for i=1:m
% Compute the shift
  lc=A(n-1:n,n-1:n);elc=eig(lc);
  if ( abs(A(n,n)-elc(1)) < abs(A(n,n)-elc(2)) )
      shift = elc(1);
  else
      shift = elc(2);
  end
% Perform QR iteration; enforce symmetry explicitly
  [q,r]=qr(A-shift*eye(n));A=r*q+shift*eye(n);
  A = tril(triu(A,-1),1); A = (A+A')/2;
 
  NN = [NN;[A(n,n-1),A(n,n)]];
end
 
D=A;

