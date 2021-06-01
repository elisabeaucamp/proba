close all;
clear variables;

N = 50000;

X = rand(1, N) + 1;
Y = rand(1, N) + 1;

S = X + Y;
[s, sout] = hist(S, 30);

P = X .* Y;
[p, pout] = hist(P, 30);

Q = X ./ Y;
[q, qout] = hist(Q, 30);

subplot(222);
bar(sout, s / trapz(sout, s)); hold on;
plot( 2:3, (2:3) - 2, 3:4, 4 - (3:4) );

subplot(223);
bar(pout, p / trapz(pout, p));hold on;
plot( 1:2, log(1:2), 2:4, 2* log(2) - log(2:4) )

subplot(224);
bar(qout, q / trapz(qout, q));hold on;
plot( 0.5:0.01:1 , 2 - 1 ./ ( 2 * (0.5:0.01:1).^2 ), 1:0.01:2, 2 ./ (1:0.01:2).^2 -( 1/2) )

subplot(221)
[x, xout] = hist(X, 50);

bar (xout, x / trapz(xout, x))