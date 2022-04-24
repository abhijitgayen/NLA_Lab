clc;
clear All;
close All;
close;
clear;

format long e

f=@(t)(sin(pi*t)+(t/5));
t=-5:0.5:6;

n=18+1;
A=ones(length(t),n);
b=f(t);
b=b';

for it =2:n
 A(:,it)=t.^(it-1);
end

[Q,R]=cgsqr([A b]);
x_1=(R(:,1:n))\(R(:,n+1));
res1=norm(A*x_1 - b);

[CQ,CR]=cgsqr(A);
c=CQ'*b;
x_2=CR\c(1:n);
res2=norm(A*x_2 - b);
figure(1);
plot(t,polyval(flip(x_1),t),'-*r',t,polyval(flip(x_2),t),'-b',t,f(t),'-og');
legend('for cgsqr on [A,b]','for cgsqr on A','original f(t)','Location','best')


%part b)
[Q R]=mgsqr([A b]);
x_3=(R(:,1:n))\(R(:,n+1));
res3=norm(A*x_3 - b);

[MQ,MR]=mgsqr(A);
c=MQ'*b;
x_4=MR\c(1:n);
res4=norm(A*x_4 - b);
figure(2);
plot(t,polyval(flip(x_3),t),'-*r',t,polyval(flip(x_4),t),'-b',t,f(t),'-og');
legend('for mgsqr on [A,b]','for mgsqr on A','original f(t)','Location','best')


%part c)
[Q R]=qr([A b]);
x_5=(R(:,1:n))\(R(:,n+1));
res5=norm(A*x_5 - b);

[aQ,aR]=qr(A);
x_6=aR\aQ'*b;
res6=norm(A*x_6 - b);
figure(3);
plot(t,polyval(flip(x_5),t),'-*r',t,polyval(flip(x_6),t),'-b',t,f(t),'-og');
legend('for qr on [A,b]','for qr on A','original f(t)','Location','best')
 