clc;
clear All;
clear;

A=rand(8);
% a) max value in the each column
maxcol=zeros;
for it= 1: 8
    maxcol(it)=max(A(:,it));
end

% b) max value in the each row
maxrow=zeros;
for it= 1: 8
    maxrow(it)=max(A(it,:));
end
maxrow=maxrow';

%c) max value in the matrix is
maxval=max(maxcol);

%d)find to  find  the  row  and  column indices of all elements that are larger than 0.25.
update_A=find(A < 0.25);

