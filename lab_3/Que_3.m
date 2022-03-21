clc;
clear All;
close All;
format long e

n=[8 10 12];
T=[];
fprintf('   n   back_error_x1   condi_no_x1  error_x2 back_error_x2 condi_no_x2 error_x2 \n\n');
for it=1:length(n)
%n=input('Enter the N:' );
H=hilb(n(it)); 
HI = invhilb(n(it));
x= rand(n(it),1);%exact solution
b =H*x;
x1 = H\b; % Call this is method1
x2 = HI*b; % Call this is method2

%backword error of x1 and x2
 back_error_x1=((norm((H*x1) -b)/(norm(H)*norm(x))));
 con_no1=cond(H);
 error_x1=(norm(x-x1)/norm(x));
 back_error_x2=((norm((H*x2) -b)/(norm(H)*norm(x))));
 error_x2=(norm(x-x2)/norm(x));
 T=[T;n(it),con_no1,back_error_x1,back_error_x2,error_x1,error_x2];
 fprintf('%5d %12s %12s %12s %12s %12s \n\n',n(it),back_error_x1, con_no1,error_x1,back_error_x2,error_x2);
end