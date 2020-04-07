% Simulate bern(p)
clear all
% par.
p = input('prob. = ');
% Generate one variable
% x = (rand < p);

% Generate a sample
N = input('Number of simulations = '); %1e1, 1e2 .. 1e5

U = rand(1, N);
X = (U < p);

UX = unique(X) %distinct values of X

freq = hist(X, length(UX))

relfreq = freq / N