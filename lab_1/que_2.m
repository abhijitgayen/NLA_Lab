clc;
clear All;
clear;
close All;

n = input("Enter n :");
p=magic(n);

%col sum test
colsum=zeros;
for it=1:n
    colsum(it)=sum(p(:,it));
end

%row sum test
rowsum=zeros;
for it =1 :n
    rowsum(it)=sum(p(:,it));
end

%diag sum test
daig_1=0;
daig_2=0;
for it=1:n
    daig_1=daig_1+p(it,it);
end

for it=1:n
    daig_2=daig_2+p(0+it,n-it+1);
end

colsum
rowsum
daig_1
daig_2

