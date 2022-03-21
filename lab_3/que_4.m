clc;
clear All;
close All;

C=[]; 
N= 2:1:16;
Tc=[];
for n=N
    H=hilb(n);
    C=[C; cond(H)];
    Tc=[Tc;(((1+(2^(1/2)))^(4*n))/(n^(1/2)))];
end
semilogy(N,C,'-+');
hold on
semilogy(N,Tc,'-*')

legend('cond_function','theoritical');