%%
clear all
n = 100; % Number of points
p = 2; % Number of variables
%real numbers between 0 and 1 that are drawn from a uniform distribution x = rand(n,1);
y = rand(n,1);
subplot(2,3,1), plot(x,y,’o’)
title(’Simple Random Numbers(100 Points)’)
% Latin hypercube sampling
X1 = lhsdesign(n,p);
subplot(2,3,2), plot(X1(:,1),X1(:,2),’o’)
title(’LHS(100 Points)’)
% LHS with reducing correlation
X2 = lhsdesign(n,p,’criterion’,’correlation’);
subplot(2,3,3), plot(X2(:,1),X2(:,2),’o’)
title(’LHS with reducing correlation(100 Points)’)
% LHS with 5000 iterations to improve the design
X3 = lhsdesign(n,p,’iterations’,5000);
subplot(2,3,4), plot(X3(:,1),X3(:,2),’o’)
title(’LHS with 5000 Iterations(100 Points)’)
% LHS with reducing correlation and 5000 iterations
X4 = lhsdesign(n,p,’criterion’,’correlation’,’iterations’,5000); subplot(2,3,5), plot(X4(:,1),X4(:,2),’o’)
title(’LHS with Reducing Correlation and 5000 Iterations(100 Points)’) %% Correlation coefficients
cor1 = corrcoef(X1); cor2 = corrcoef(X2);
cor3 = corrcoef(X3); cor4 = corrcoef(X4);
cor1;cor2;cor3;cor4;
