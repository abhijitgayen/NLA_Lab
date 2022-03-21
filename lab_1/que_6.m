clc;
clear All;
close All;
clear;

%a) Create A martix
A=(-2)*eye(16);
u=repelem(-1,15);
A=A+diag(u,-1)+diag(u,1);
A(1,16)=1;
A(16,1)=1;
A

%b) using toeplitz
u=[-2 1 0 0 0 0 0 0 0 0 0 0  0 0 0 1];
v=[-2 1 0 0 0 0 0 0 0 0 0 0  0 0 0 1];
B= toeplitz(u,v);
B

%c)
a=[1 2 3 4 5 6 7 8];
b=[1 0 0 0 0 0 0 0];

C=toeplitz(a,b);
C

d=[1 1/2 1/3 1/4 1/5 1/6 1/7 1/8 ];
D=toeplitz(d,d);
format rational
D
