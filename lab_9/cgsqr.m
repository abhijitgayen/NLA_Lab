function [Q, R] = cgsqr(A)
% [Q, R] = cgsqr(A) employs classical Gram-Schmidt scheme to compute% an isometry Q, an upper triangular matrix R such that A=QR.
[m, n] = size(A); 
%  Assume that m >= n
Q = A; 
R = zeros(n);
for k = 1:n
    R(1:k-1,k) = Q(:,1:k-1)'* A(:,k);
    Q(:,k) = A(:,k)- Q(:,1:k-1) * R(1:k-1,k);
    R(k,k) = norm(Q(:,k));
    Q(:,k) = Q(:,k)/R(k,k);
end
end