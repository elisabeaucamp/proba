close all;
clear variables;

%partie 1

N = 10000;

U1 = rand (1, N); 
U2 = rand (1, N);

X = sqrt(-2 * log( U1 )  ) .* cos( 2 * pi * U2 );
Y = sqrt(-2 * log( U1 )  ) .* cos( 2 * pi * U2 );

[hx, xout] = hist(X, (-5:0.3:5) );
[hy, xout] = hist(Y, (-5:0.3:5) );



bar(xout, hx / trapz(xout, hx), 1, 'g');
hold on;
bar(xout, hy / trapz(xout, hy), 0.5, 'r');

%on voix que elle est centrer en 0 et inf a 1

%parite 2

mu = 3;
sigma = 4;

Z = X * sigma + mu;

figure(2);
[hz, zout] = hist(Z, 50);
bar(zout, hz / trapz(zout,hz));

fz = 1/ ( sigma * sqrt( 2 * pi ) ) * exp( -(zout -mu).^2 / ( 2 * sigma^2 ) );
hold on;
plot(zout, fz)


