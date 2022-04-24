clc;
clear All;
close All;
clear ;
close;


N=[4 5 6];
for it =1:length(N)
    M=magic(N(it));
    [V,D]=eig(M);
    max_eigen=max(sum(D));
    fprintf('max eigen value for magic(%d) is %s\n',N(it),max_eigen);
end



M=magic(5);
T=schur(M);
fprintf('Schure decomposition of magic(5) is\n');
disp(T)