function cond(H)
%%%%%%%     Matlab program that implements growth of cond(H)
% generate Hilbert matrices and compute cond number with 2-norm
N=50; % maximum size of a matrix
condofH = [];% conditional number of Hilbert Matrix
N_it= zeros(1,N);

% compute the cond number of Hn
for n = 1:N
    Hn = hilb(n);
    N_it(n)=n;
    condofH = [condofH cond(Hn,2)];
end
% at this point we have a vector condofH that contains the condition
% number of the Hilber matrices from 1x1 to 50x50.
% plot on the same graph the theoretical growth line.
% Theoretical growth of condofH
x = 1:50;
y = (1+sqrt(2)).^(4*x)./(sqrt(x));

% plot
plot(N_it, log(y));
plot(N_it, log(condofH),'x', N_it,log(y));
% plot labels

plot(N_it, log(condofH),'x', N_it,log(y))
title('Conditional Number growth of Hilbert Matrix: Theoretical vs Matlab')
xlabel('N', 'fontsize', 16)
ylabel('log(cond(Hn))','fontsize', 16)
lgd = legend ('Location', 'northwest')
legend('MatLab', 'Theoretical')
legend('show')

end
%%%%%%%    end of the program