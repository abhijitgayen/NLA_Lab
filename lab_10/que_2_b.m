clc;
clear All;
close All;
clear
close

format long e
N=[8,10,12];
cond_F=zeros;
cond_F1=zeros;
cond_F2=zeros;
for it= 1:length(N)
    n=N(it);
    F=gallery('frank',n);
    F1=F;
    F1(n,1)=10^(-10);
    F2=F;
    F2(1,n)=10^(-10);
    [V,D]=eig(F);
    cond_F(it)=cond(V);
    [V1,D1]=eig(F1);
    cond_F1(it)=cond(V1);
    [V2,D2]=eig(F2);
    cond_F2(it)=cond(V2);
end

tab=[cond_F;cond_F1;cond_F2];
disp(tab)

