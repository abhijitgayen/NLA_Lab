clc;
clear All;
close All;
clear;

% given equation is X^2-(10^7+10^(-7))x+1
a=1;
b=-((10^7)+(10^(-7)));
c=1;

[caseA_root_1,caseA_root_2]=quadroot1(a,b,c);
[caseB_root_1,caseB_root_2]=quadroot2(a,b,c);

fprintf("for Case A :\n\t Root 1 :%s and Root 2 :%s\n\nfor Case B:\n\t Root 1 :%s and Root 2 :%s\n",...
num2str(caseA_root_1),num2str(caseA_root_2),num2str(caseB_root_1),num2str(caseB_root_2));

%for quadroot2 give us more accurate result