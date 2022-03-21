clc;
clear All;

%part A)
N=[32 , 64];

format short
for it=1:length(N)
n=N(it);
W=Wilkinson(n);
x=rand(n,1);
b=W*x;
xnu=W\b;
error=max(abs(x-xnu))/max(abs(x));

cond_no=cond(W);

%QR method
[Q, R]=qr(W);
y_q=Q\b;
x_q=R\y_q;
error_q=max(abs(x-x_q))/max(abs(x));


error
error_q
cond_no
end