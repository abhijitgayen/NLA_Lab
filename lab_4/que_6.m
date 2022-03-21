clc;
clear All;
clear All;
N=3:1:60;
G=zeros;
cond_no=zeros;
for it=1:length(N)
A=golub(N(it));
[L,U]=GENP(A);
G(it) = max(max(abs(U)))/(max(max(abs(A))));
cond_no(it)=cond(A);
end

semilogx(cond_no,G,'-g');
