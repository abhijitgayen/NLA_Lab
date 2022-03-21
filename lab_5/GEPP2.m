function [L, U, p, d, d1] = GEPP2(A)
% [L, U, p, d] = GEPP(A) produces a unit lower triangular matrix L, an upper
% triangular matrix U and a permutation vector p, so that A(p,:)= LU
% and d = det(A)
[L,U,p]=GEPP(A);
[n,n]=size(U);
d=1;
for it=1:n
    d=d*U(it,it);
end
% as permutaion is odd. how to cheack the permution is odd or even
y=eye(numel(p));
evenodd=det(y(:,p));
d=evenodd*d;
d1=det(A);
end