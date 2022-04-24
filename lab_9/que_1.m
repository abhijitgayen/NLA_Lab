clc;
clear All;
close All;
clear;
close;


%n=input('Enter n:');
n=7:12;
cortho=zeros;
mortho=zeros;
ortho=zeros;
cerror=zeros;
merror=zeros;
error=zeros;
cond_no=zeros;
u_mul_con=zeros;

for it=1:6
    N=6+it;
    H=hilb(N);
    [CQ,CR]=cgsqr(H);
    [MQ,MR]=mgsqr(H);
    [Q,R]=qr(H,0);
    
    cortho(it)=norm(eye(N)-CQ' * CQ);
    mortho(it)=norm(eye(N)-MQ' * MQ);
    ortho(it)=norm(eye(N)- Q' * Q);
    
    cerror(it)=norm(H - CQ*CR);
    merror(it)=norm(H - MQ*MR);
    error(it)=norm( H - Q*R);
    cond_no(it)=cond(H);
    u_mul_con(it)= eps*cond_no(it);
    
end

figure();
semilogy(n,ortho,'-r',n,cortho,'-*b',n,mortho,'-og',n,u_mul_con,'--');
legend('by qr method','by cgsqr method','by mgsqr method','u* cond_no');
cortho
mortho
ortho
cerror
merror
error
cond_no

figure();
semilogy(n,cerror,'-r',n,merror,'-*b',n,error,'-og');
legend('error in cgsqr','error in mgsqr','error in Qr');


