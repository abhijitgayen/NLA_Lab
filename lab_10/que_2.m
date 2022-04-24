clc;
clear All;
close All;
clear;
close;
format long e

N=[8,10,12,14,16];
 cond_V=zeros;
for it =1 :length(N)
n=N(it);
F=gallery('frank',n);
[V , D]= eig(F);
eigen_val=sum(D);
eig_val=sort(eigen_val);
one_by_eig=1./eig_val;
%fprintf('eigen values are\n');
%disp(eig_val);
%fprintf('1/eigen values are\n');
%disp(one_by_eig);
eig_set=[eig_val',1 ./ eig_val'];
disp(eig_set);


[V,D, s]=condeig(F);
tab=[ diag(D)' ; s' ];
disp(tab);
figure();
plot(diag(D),s)
cond_V(it)=cond(V);
end
fprintf('cpndition no of V\n');
disp(cond_V);
figure()
semilogy(N,cond_V,'-*r')