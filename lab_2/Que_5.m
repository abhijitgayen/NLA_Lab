clc;
clear All;
close All;

p=@(x)((x-2).^9);

a=[ 1 -18 144 -672 2016 -4032 5376 -4608 2304 -512];
x=linspace(1.95,2.05,151);
y_1=polyval(a,x);
y_0=p(x);

plot(x,y_1,'-+r',x,y_0,'-ob');
legend('using polyval','simple use');