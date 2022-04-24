function [Q, R] = mgsqr(A)
% [Q, R] = mgsqr(A) employs modified Gram-Schmidt scheme to compute% an isometry Q, an upper triangular matrix R such that A=QR.
[m,n] = size(A);  % Assume that m >=n
Q = A; 
R = zeros(n);
for k = 1:n
    R(k,k) = norm(Q(:,k));
    Q(:,k) = Q(:,k)/R(k,k);
    R(k,k+1:n) = Q(:,k)'* Q(:,k+1:n);
    Q(:,k+1:n) = Q(:,k+1:n) - Q(:,k) * R(k,k+1:n);
end
end