clc;
clear All;
close All;
clear;

A=[10^(-20) 1 ; 1 1];
%A=[1 2 4 1;2 1 3 4 ;1 0 2 7];
%b=[10 12 13 5];
%n=4;

%for GENP
[L ,U]=GENP(A);
E = L*U-A;

%x=zeros(n,1);
%for jt=1:n-1
    %x(jt)=b(jt)/L(jt,jt);
    %b(jt+1:n)=b(jt+1:n)-L(jt+1:n,jt).*x(jt);
%end

%for GEPP
[L, U, p] = GEPP(A);
F = L*U - A(p,:);

%for GECP
[L, U, p,q]=GECP(A);
G=L*U - A(p,q);

n_genp=norm(E);
n_gepp=norm(F);
n_gecp=norm(G);

fprintf(" Norm for GENP %s \n Norm for GEPP %s \n Norm for GECP %s \n",num2str(n_genp),num2str(n_gepp),num2str(n_gecp));

% we are not get accurate result for finding LU decomposition for CENP
%But for this martix the method GEPP and GECP are perfect . 


