clc;
clear All;
close All;
clear
close

w=zeros(20);
w=diag(20:-1:1)+diag(20*ones(1,19),1);

[V, D,s]=condeig(w);
tab=[sum(D)',s];
disp(tab)

efls=[7.8*10^(-10),7.5*10^(-12),7.8*10^(-14)];
for it =1 : length(efls)
    W1=w;
    W1(20,1)=efls(it);
    [V_p,D_p,s_p]=condeig(W1);
    ab=abs(sum(D)-sum(D_p))';
    cd=efls(it).*s+(efls(it).^2);
    ans=ab./cd
end