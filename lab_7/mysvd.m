function [U,V,sigma]=mysvd(A)
% Get U, V
[aatVecs, aatVals] = eig(A*A');
[~, aatPermutation] = sort(sum(aatVals), 'descend');
U = aatVecs(:, aatPermutation);

[ataVecs, ataVals] = eig(A'*A);
[~, ataPermutation] = sort(sum(ataVals), 'descend');
V = ataVecs(:, ataPermutation);

% Get Sigma
singularValues = sum(aatVals(:, aatPermutation)).^0.5;
sigma=zeros(size(A));
for i=1:nnz(singularValues)
    sigma(i, i) = singularValues(i);
end
end