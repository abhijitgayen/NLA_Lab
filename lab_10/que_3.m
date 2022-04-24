clc;
clear All;
close All;
clear 
close


n=1;
while(n==1)
A=gallery(5);
e=eig(A);
figure()
plot(real(e),imag(e),'r*',0,0,'ko');
axis(.1*[-1 1 -1 1])
axis square

r_1=sqrt((real(e)).^2+(imag(e)).^2);

hold on
e=eig(A+eps*randn(5,5).*A);
plot(real(e),imag(e),'g*',0,0,'ko');
axis(.1*[ -1 1 -1 1])
axis square

r_2=sqrt((real(e)).^2+(imag(e)).^2);
ra_1=[r_1,r_2,abs(r_1-r_2)]
n=input('Enter other than 1 to stop:');


end