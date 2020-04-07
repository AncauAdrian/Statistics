% problem 1 a)

%           pop       sample
% mean      miu       xbarat
% var.      sigmasq   ssq
% std dev.  sigma     s


% H0: miu = 9  (miu >= 9)
% H1: miu < 9  left-tailed

X = [ 7 7 4 5 9 9 ...
    4 12 8 1 8 7 ...
    3 13 2 1 17 7 ...
    12 5 6 2 1 13 ...
    14 10 2 4 9 11 ...
    3 5 12 6 10 7 ]; % sample data

sigma = 5;  % case: sigma is known
miu0 = 9;   % test-value
alpha = input('significance level (in(0,1))=');

% tail -- -1='left' -- 0='both' -- +1='right'
% primele 3 sunt obligatorii restul optionale (argumentele functiei)
% h - decizia 0=accept ipoteza 1=resping ipoteza, p=value, ci=confidence
% interval 100(1-alpha), zval=pbs value of the TS, Z0
[h, p, ci, zval] = ztest(X, miu0, sigma, alpha, -1);

if h==0
    fprintf('H0 is not rejected(accepted), i.e efficiency std is met\n');
else
    fprintf('H0 is rejected, i.e efficiency std is not met\n');
end

fprintf('Observed value of the TS (test statistic) is %3.5f\n', zval);
q1 = norminv(alpha,0,1);

fprintf('Rejection region RR is (-inf, %3.5f)\n', q1);

fprintf('P value is %3.5f;\n\n', p);

% P <= alpha -> resping H0
% P > alpha -> accept H0


% b) case sigma not known
% H0: miu = 5.5
% H1: miu > 5.5
miu0 = 5.5;

%stats: tstat: obs value of TS, df: degree of freedm, sd: est standard
%deviation
[h, p, ci, stats] = ttest(X, miu0, alpha, 1);

if h==0
    fprintf('H0 is not rejected(accepted), i.e on average the no of files exceeds\n');
else
    fprintf('H0 is rejected, i.e on average the no of files does not exceeds \n');
end

fprintf('Observed value of the TS (test statistic) is %3.5f\n', stats.tstat);
q = tinv(1-alpha,stats.df);

fprintf('Rejection region RR is (%3.5f, +inf)\n', q);

fprintf('P value is %3.5f;\n', p);

