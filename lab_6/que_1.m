 clc;
 clear ;
 close All;
 %%% Set up data
 h = [0.282; 0.564; 0.752; 0.940];
 d = [0.752; 1.102; 1.248; 1.410];
 %%% Form the 4x2 matrix A and solve for the coefficient vector c.
 A = [ones(size(h)), h]; 
 c = A\d;   % solution of the LSP Ac =d
 cc = flipud(c);    % order the coefficients in descending
 % order for polyval%
 %% Plot the data pointsplot(h,d,’b ’), 
 title('Least Squares Linear Fit')
 xlabel('release height'); 
 ylabel('horizontal distance');
 %%% Plot the line of best fi
 hmin = min(h); 
 hmax = max(h); 
 h1 = hmin:(hmax-hmin)/10:hmax;
 y  =  0.4982  +  0.9926.*h1;
 plot(h1, polyval(cc, h1), '*-r',h,d,'-b')
 legend('using curve fitting','given data');
  r=norm((A*c -d),2);
  fprintf('value of r is : %s \n',r);