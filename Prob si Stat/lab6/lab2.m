% Problem 2

X1 = [ 22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0 ];
X2 = [ 17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2 ];

alpha = input('significance level = ');

%a)
%H0: sigma1 = sigma2
%H1: sigma1 != sigma2 two-tailed

[h, p, ci, stats] = vartest2(X1, X2, alpha, 'both');

if h==0
    fprintf('H0 is not rejected(accepted), i.e variances are eq\n');
else
    fprintf('H0 is rejected, i.e variances are not eq\n');
end

q1 = finv(alpha/2, stats.df1, stats.df2);
q2 = finv(1- alpha/2, stats.df1, stats.df2);

fprintf('Observed value of the TS (test statistic) is %3.5f\n', stats.fstat);

fprintf('Rejection region RR is (-inf, %3.5f) U (%3.5f, inf)\n', q1, q2);

fprintf('P value is %3.5f;\n\n', p);

% b)
% H0: miu1 = miu2
% H1: miu1 > miu2

[h, p, ci, stats] = ttest2(X1,X2,alpha, 'right', 'equal');

if h==0
    fprintf('H0 is not rejected(accepted), i.e it doesnt seem that premium gasoline has better gas mileage\n');
else
    fprintf('H0 is rejected, i.e premium gas seems to have better gas mileage\n');
end

q2 = tinv(1-alpha, stats.df);

fprintf('Observed value of the TS (test statistic) is %3.5f\n', stats.tstat);

fprintf('Rejection region RR is (%3.5f, inf)\n', q2);

fprintf('P value is %1.5e;\n\n', p);