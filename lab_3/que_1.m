clc;
clear All;
close All;

format long e

A=[10^(-20) 1;1 1];
[L , U]=GENP(A);

%the product of  LU
fprintf('product of LU');
A_LU=L*U

fprintf('my observation L*U from GENP is different from A\n');
fprintf('Error is %f \n',norm(A-A_LU));

b=[1;0];

Y= L\b;
X =U\Y;
 fprintf("for genp \n");
 X
 
 fprintf("for x=A^-1B");
 x_other=A\b
 
 
 [L_a,U_a,p]=GEPP(A);
 fprintf('for GEPP error is %f \n',norm(A(p,:)- (L_a*U_a)));
 
 %backword Error for LU decomposition
 back_error_A=(norm(A-L*U)/norm(A));
 fprintf('backword error for LU decompusion is %s\n',back_error_A);
 
 %backword error of x
 back_error_x=((norm((A*X) -b)/(norm(A)*norm(x_other))));
 fprintf('backword error for x_appx is %s\n',back_error_x);
 
 %condition no
 condition_no=cond(A);
  fprintf('condition no of A is %s\n',condition_no);
  
  
 %sensivity need to see this crearly
 relativ_error=(norm(X-x_other)/norm(x_other));
 
 if( relativ_error < condition_no*back_error_x)
     fprintf('ok it is ');
 end
 
 
 
 