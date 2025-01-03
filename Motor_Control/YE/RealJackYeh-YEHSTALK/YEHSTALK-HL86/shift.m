function y = shift(X)
N = max(size(X));
p = ceil((N+1)/2);
m1 = 1:p;
m2 = p+1:N;
y = [X(m2) X(m1)];