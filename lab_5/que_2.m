clc;
clear;
close All;
format short e

ka=[ 10^4 , 10^8 , 10^12 , 10^16];
n=100;
T_1=[ ];
T_2=[ ];
T_3=[ ];
T_4=[ ];
T=[];
for it= 1 : length(ka)
    A=matgen(n,ka(it));
    cond_no=cond(A);
    b=A*ones(n,1);
    x=ones(n,1);
    
    %ALG1
    x_1=A\b;
    %alg2
    [L, U, P, Q]=GECP(A);
    b_1=b(P);
    y=L\b_1;
    x_2=U\y;
    x_2=x_2(Q);
    %alg3
    [L , U]=GENP(A);
    y_1=L\b;
    x_3=U\y;
    %alg4
    x_4=inv(A)*b;
    
    bkerr_4=norm(A*x_4 - b)/(norm(A)*norm(x_4));
    bkerr_1=norm(A*x_1 - b)/(norm(A)*norm(x_1));
    bkerr_2=norm(A*x_2 - b)/(norm(A)*norm(x_2));
    bkerr_3=norm(A*x_3 - b)/(norm(A)*norm(x_3));
    
    err_1=norm(x-x_1)/norm(x);
    err_2=norm(x-x_2)/norm(x);
    err_3=norm(x-x_3)/norm(x);
    err_4=norm(x-x_4)/norm(x);
    
    %errbd
    r_1=(b-A*x_1);
    errbd_1=(r_1'* x_1)/(norm(x_1))^2;
    r_2=(b-A*x_1);
    errbd_2=(r_2'*x_2)/(norm(x_2))^2;
    r_3=(b-A*x_3);
    errbd_3=(r_3'*x_3)/(norm(x_3))^2;
    r_4=(b-A*x_4);
    errbd_4=(r_4'*x_4)/(norm(x_4))^2;
   T_1 =[T_1 ;ka(it) bkerr_1 , err_1, errbd_1]; 
   T_2=[T_2;ka(it) bkerr_2 err_2 errbd_2];
   T_3=[T_3;ka(it) bkerr_3 err_3 errbd_3];
   T_4 =[T_4;ka(it) bkerr_4 err_4 errbd_4];   
end