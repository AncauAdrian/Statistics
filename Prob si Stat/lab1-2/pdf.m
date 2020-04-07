%Graphs of pdf and cdg for Binomial distr.

n = input('nr. of trials = ');
p = input('prob of success(0-1) = ');
% 
% xpdf = 0 : n;
% ypdf = binopdf(xpdf, n, p);
% %plot(xpdf, ypdf, 'r*');
% 
% xcdf = 0 : 0.01 : n;
% ycdf = binocdf(xcdf, n, p);
% %plot(xcdf, ycdf, 'g*');

% part c
prob1 = binopdf(0,n,p);
prob2 = 1 - binopdf(1,n,p);
prob3 = binocdf(2,n,p); % <=2
prob4 = binocdf(1,n,p); % < 2
prob5 = 1 - binocdf(0,n,p);
prob6 = 1 - binocdf(1,n,p);

fprintf('Probability 1 in c is %1.5f\n', prob1);
fprintf('Probability 2 in c is %1.5f\n', prob2);
fprintf('Probability 3 in d is %1.5f\n', prob3);
fprintf('Probability 4 in d is %1.5f\n', prob4);
fprintf('Probability 5 in d is %1.5f\n', prob5);
fprintf('Probability 6 in d is %1.5f\n', prob6);


