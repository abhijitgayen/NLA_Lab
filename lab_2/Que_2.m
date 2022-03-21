clc;
clear All;
close All;

accounts = 100 + (100000-100) * rand(50000,1);
% Sets up 50,000 accounts with balances between $100 and $100000.
accounts = floor(100 * accounts)/100;
% Deletes fractions of a cent from initial balances.