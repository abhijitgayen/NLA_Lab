clc;
clear All;
n=input("enter N :");
ka= input("Enter ka :");
A=matgen(n,ka);
cond_no=cond(A);
fprintf(" condition no is %s\n",cond_no);
