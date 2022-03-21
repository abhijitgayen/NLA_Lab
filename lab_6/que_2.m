clc;
clear;
close All;

%data set
A=[1 -1 0 0; -1 0 1 0;1 0 0 -1;0 0 1 -1;0 1 0 -1; 1 1 1 1];
b=[ 4 9 6 3 7 20]';
y=A\b;
y0=A(1:5,:)\b(1:5);
fprintf("with out using x1+x2+x3+x4=20 the solutio is :");
disp(y0);
fprintf('Unique solution is \n');
disp(y);
fprintf('positon of teams are: \n\tT3 T1 T2 T4\n\n');