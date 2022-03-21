function [L, U, p] = GEPP(A)
% [L U, p] = GEPP(A) produces a unit lower triangular matrix L, an upper
% triangular matrix U and a permutation vector p, so that A(p,:)= LU.

[n,n] = size(A);
p = (1:n)';
for k = 1:n-1
    % find largest element in A(k:n,k)
    [r, m] = max( abs( A(k:n,k) ) );
    m = m+k-1;
    if (m~=k) % swap row
        A([k m],:)  = A([m k],:);
        p([k m]) = p([m k]);
    end
if (A(k,k)~= 0)
    % compute multipliers for k-th step
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    % update A(k+1:n,k+1:n)
    j = k+1:n;
    A(j,j) = A(j,j)-A(j,k)*A(k,j);
end
end% strict lower triangle of A, plus I
L = eye(n,n)+ tril(A,-1);
U = triu(A); % upper triangle of A
