% Simulate Geo(p) var
clear all

p = input('prob. of success = ');
% Generate one var.
% X = 0; % nr of failures
%  
% while rand >= p % failure
%     X = X + 1 % count nr of failures and stop at first success
% end

% Generate a sample
N = input('nr of sim. = ');

for i = 1:N
    X(i) = 0; % nr of failures
 
    while rand >= p % failure
        X(i) = X(i) + 1; % count nr of failures and stop at first success
    end
end

fprintf('Simulated prob. P(X=2)= %1.5f\n', mean(X==2))
fprintf('True prob. P(X=2)= %1.5f\n\n', geopdf(2, p))

fprintf('Simulated prob. P(X<=2)= %1.5f\n', mean(X<=2))
fprintf('True prob. P(X<=2)= %1.5f\n\n', geocdf(2, p))

fprintf('True mean(expected) value E(X) = %3.5f\n', (1-p)/p)

% x C Nbin(n,p) adica ca ^ dar pana la aparitia n-ului success = 
% the sum of N indep Xi C Geo(p)

