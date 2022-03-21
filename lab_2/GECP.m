function [L, U, p,q] = GECP(A)
% [L U, p] = GEPP(A) produces a unit lower triangular matrix L, an upper
% triangular matrix U and a permutation vector p, so that A(p,:)= LU.

[n, n] = size(A);
p = 1:n; 
q = 1:n;
for k = 1:n-1
    [maxcol, rowindes] = max( abs(A(k:n, k:n)) );
    [maxele, colindex] = max(maxcol);
    row = rowindes(colindex)+k-1; col = colindex+k-1;
    A( [k, row], : ) = A( [row, k], : );
    A( :, [k, col] ) = A( :, [col, k] );
    p( [k, row] ) = p( [row, k] ); q( [k, col] ) = q( [col, k] );
    if A(k,k) == 0
      break
    end
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    i = k+1:n;
    A(i,i) = A(i,i) - A(i,k) * A(k,i);
end
L = tril(A,-1) + eye(n);
U = triu(A);