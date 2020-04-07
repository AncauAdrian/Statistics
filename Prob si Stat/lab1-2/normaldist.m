% Normal dist
miu = input('miu(R) = ');
sigma = input('sigma(>0 )= ');

prob1 = normcdf(0,miu,sigma);
prob2 = 1 - prob1;
prob3 = normcdf(1,miu,sigma) - normcdf(-1,miu,sigma);
prob4 = 1 - prob3;

% part c
alpha = 1/2
x_alpha = norminv(alpha,miu,sigma); % 0 <= alpha <= 1

% part d
beta = 1/2;
x_beta = norminv(1-beta,miu,sigma);


fprintf('prob1 = %1.5f\n', prob1);
fprintf('prob2 = %1.5f\n', prob2);
fprintf('prob3 = %1.5f\n', prob3);
fprintf('prob4 = %1.5f\n', prob4);

fprintf('x_alpha = %1.5f\n', x_alpha);


