clear variables;
close all;

N = 50000;
n = 50;
a = -2;
b = 3;

X = (b - a) * rand(1, N) + a;

[h, xout] = hist(X, n);
aire = trapz(xout, h)

bar(xout, h/ aire);
hold on;

f = 1/ (b - a) * ones(1,n);
plot(xout, f, 'r');

E_emp = mean(xout)
E_theo = ( a + b ) / 2

V_emp = mean(xout.^2) - mean(xout).^2
V_theo = (b-a)^2 / 12

sigma_emp = sqrt( V_emp )
sigma_theo = sqrt( V_theo )