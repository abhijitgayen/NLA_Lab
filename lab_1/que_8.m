clc;
clear All;
close All;
clear;

rand('state',1000)
x=[1 2];
for n=2:999
    x(n+1)=x(n)+sign(rand-0.5)*x(n-1);
end
semilogy(1:1000,abs(x))
c=1.13198824;
hold on
semilogy(1:1000,c.^[1:1000])
hold off
