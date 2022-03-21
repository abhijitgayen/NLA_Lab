function [L, U] = GENP(A)
% [L U] = GENP(A) produces a unit lower triangular matrix L and an upper
% triangular matrix U so that A= LU.

[n, n] = size(A);
for k = 1:n-1% compute multipliers for k-th step
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);% update A(k+1:n,k+1:n)
    j = k+1:n;
    A(j,j) = A(j,j)-A(j,k)*A(k,j);
end

% strict lower triangle of A, plus I
L = eye(n,n)+ tril(A,-1);
U = triu(A); % upper triangle of A