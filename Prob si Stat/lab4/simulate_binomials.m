% Simulate bino(p)
clear all
% par.
n = input('nr of trials = ');
p = input('prob. of success = ');
% Generate one variable
%U = rand(n,1);
%X = sum(U<p);

% Generate a sample
N = input('Number of simulations = '); %1e1, 1e2 .. 1e5

for i =1:N
    U = rand(n,1);
    X(i) = sum(U<p);
end

%Application/Comparison
fprintf('Simulated prob. P(X=2)= %1.5f\n', mean(X==2))
fprintf('True prob. P(X=2)= %1.5f\n', binopdf(2, n,p))
fprintf('Error = %e\n\n',abs(mean(X==2) - binopdf(2, n, p)))

fprintf('Simulated prob. P(X<=2)= %1.5f\n', mean(X<=2))
fprintf('True prob. P(X<=2)= %1.5f\n', binocdf(2, n,p))
fprintf('Error = %e\n\n', abs(mean(X<=2) - binocdf(2, n, p)))

fprintf('Simulated prob. P(X<2)= %1.5f\n', mean(X<2))
fprintf('True prob. P(X<2)= %1.5f\n', binocdf(1, n,p))
fprintf('Error = %e\n\n', abs(mean(X<2) - binocdf(1, n, p)))

fprintf('Simulate mean(expected) value E(X) = %3.5f\n', mean(X))
fprintf('True mean(expected) value E(X) = %3.5f\n', n*p)
fprintf('Error = %e\n\n', abs(mean(X) - n*p))

%UX = unique(X) %distinct values of X

%freq = hist(X, length(UX))

%relfreq = freq / N