clc;
clear All;
close All;
clear;

x=input("Enter value of x :");
v=[x];
y=x;
while x>1
    x=x/2;
    v=[v,x];
end

u=[y];
while y+1>1
    y=y/2;
    u=[u,y];
end
u
v