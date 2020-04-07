%c.i's for the parameters of two populations

conf_level = input('conf level (1-alpha) = ');
alpha = 1 - conf_level;

X1 = [ 22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0 ];
X2 = [ 17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2 ];

xbar1 = mean(X1);
xbar2 = mean(X2);
n1 = length(X1);
n2 = length(X2);

% part a) sigma1 = sigma2

s1sq = var(X1);
s2sq = var(X2);

spsquared = ((n1-1)*s1sq + (n2-1)*s2sq) / (n1+n2-2);

q1 = tinv(1-alpha/2, n1+n2-2);
q2 = -q1; % symmetry

ci1 = xbar1-xbar2-q1*sqrt(spsquared) * sqrt(1/n1 + 1/n2);
ci2 = xbar1-xbar2-q2*sqrt(spsquared) * sqrt(1/n1 + 1/n2);

fprintf('c.i. for the difference of pop means, case sigma1 = sigma 2 is [%3.5f,%3.5f]\n',ci1,ci2);


% part b) sigma1 != sigma2

c =  s1sq/n1 / (s1sq/n1 + s2sq/n2);
oneovern = c^2 /(n1-1) + (1-c)^2/(n2-1);
n = 1/oneovern;

q1 = tinv(1-alpha/2, n);
q2 = -q1;

Y = s1sq/n1 + s2sq/n2;
ci1 = xbar1-xbar2-q1*sqrt(Y);
ci2 = xbar1-xbar2-q2*sqrt(Y);

fprintf('c.i. for the difference of pop means, case sigma1 != sigma2 is [%3.5f,%3.5f]\n',ci1,ci2);


% part c)
q1 = finv(1-alpha/2, n1-1, n2-1);
q2 = finv(alpha/2, n1-1, n2-1);

ci1 = s1sq/s2sq * 1/q1;
ci2 = s1sq/s2sq * 1/q2;

fprintf('c.i. for the ratio of pop. variances is [%3.5f,%3.5f]\n',ci1,ci2);
fprintf('c.i. for the ratio of std dev is [%3.5f,%3.5f]\n',sqrt(ci1),sqrt(ci2));
