clc;
clear;
close All;

f=@(t)(1./(1 + (25.*t.^2)));
N=[300 500];
deg_pol=30;
for it=1:length(N)
    x=-1:(1+1)/N(it):1;
    b=f(x)';
    A=zeros;
    for jt=1:length(x)
        for k=1:deg_pol+1
            A(jt,k)=(x(jt)^(k-1));
        end
    end
    Y=A\b;
    YY = flipud(Y);
    Y1=(A' *A)\(A' *b);
    YY1=flipud(Y1);
    figure(it)
    xx=linspace(-1,1,500);
     plot(xx, polyval(YY, xx), '*-r',x,b,'-b',xx,polyval(YY1,xx),'-g')
     legend('appx sol using ','given','appx using A^T');
    
    r=norm(A*Y-b);
    r1=norm(A*Y1-b);
end