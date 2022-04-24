clc;
clear All;
close All;
close 
clear

format long e

f=sqrt(eps);
A=[1, f;f ,1 ];
A
eig_val=eig(A);
n=10;
for it=1:n
   [Q,R]=qr(A);
   T=R*Q;
   A=T;
end
 
eig_val
T
c=[1 , -2, (1-(f^2))];
r=roots(c);
r
