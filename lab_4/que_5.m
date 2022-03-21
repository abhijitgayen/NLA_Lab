clc;
clear All;
close All;

error_g=max(abs(x-x_g(P)))/max(abs(x));
n = 10:20:500;  
m = length(n); 
G = zeros(m,1);
for i = 1:m
    W = Wilkinson(n(i));
    [L,U,p] = lu(W);
    G(i) = max(max(abs(U)))/(max(max(abs(W))));
end
fg=figure(1);
semilogy(n,G,'b*');

hold on
semilogy(n,2.^(n-1),'--r');
legend('wilkinson_PG','$2^(n-1)$');