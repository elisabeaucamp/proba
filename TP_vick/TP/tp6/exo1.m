close all;
clear variable;

N = 50000;

% emirique
X = rand(1, N);
Y = rand(1, N);

u = -1/1 * log( 1 - X );
v = -1/2 * log( 1 - Y );

U = u + 2* v;

[h, xout] = hist(U, 0:0.2:16);

bar(xout, h / trapz(xout, h) );


%theo 

hold on;
plot(xout, xout .* exp( -xout ))


ecart_type = mean(U)

v = std(U) ^2