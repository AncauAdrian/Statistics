% c. i.'s for the parameters of one population

conf_level = input('confidence level (1-alpha) = ');
alpha = 1 - conf_level;

X = [ 7 7 4 5 9 9 ...
    4 12 8 1 8 7 ...
    3 13 2 1 17 7 ...
    12 5 6 2 1 13 ...
    14 10 2 4 9 11 ...
    3 5 12 6 10 7 ];

n = length(X);

mX = mean(X); % mean

% part a)

sigma = 5; % case sigma known

q1 = norminv(1-alpha/2, 0, 1);
q2 = -q1; % symmetry


ci1 = mX - sigma / sqrt(n) * q1;
ci2 = mX - sigma / sqrt(n) * q2;


fprintf('c.i. for the pop mean, case Sigma is [%3.5f,%3.5f]\n', ci1, ci2);

% part b) s = std(x)

s = std(X);
q1 = tinv(1-alpha/2, n - 1);
q2 = -q1; %symmetry
ci1 = mX - s/sqrt(n) * q1;
ci2 = mX - s/sqrt(n) * q2;

fprintf('c.i. for the pop mean, Sigma is not known [%3.5f,%3.5f]\n', ci1, ci2);

% part c)
ssq = var(X);
q1 = chi2inv(1-alpha/2, n - 1);
q2 = chi2inv(alpha/2, n - 1); % no symmetry

ci1 = (n-1) * ssq / q1;
ci2 = (n-1) * ssq / q2;

fprintf('c.i. for the variance [%3.5f,%3.5f]\n', ci1, ci2);

fprintf('c.i. for the std deviation [%3.5f,%3.5f]\n', sqrt(ci1), sqrt(ci2));

