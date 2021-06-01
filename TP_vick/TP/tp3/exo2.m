clear variables;
close all;

% 1 cf feuille waw g réussie seule presque !

N = 10000;

lambda = 0.3;
mu = 0.5;
alpha = lambda + mu - lambda*mu;

X = zeros(1, N);
Y = zeros(1, N);
Z = zeros(1, N);

for k = 1: N
    X(k) = LoiGeometrique(lambda);
    Y(k) = LoiGeometrique(mu);
    Z(k) = min(X(k), Y(k));
end

m = max(max(X,Y));


% X
[hx, xout] = hist(X, 1 : m );
x_theo = (1 - lambda).^(xout - 1) * lambda;

subplot(131);

bar(xout, hx/N);
hold on;
bar(xout, x_theo, 0.5, 'g');


%Y
[hy, xout] = hist(Y, 1 : m );
y_theo = (1 - mu).^(xout - 1) * mu;

subplot(132);
bar(xout, hy/N);
hold on;
bar(xout, y_theo, 0.5, 'g');


%Z
z_theo = (1 - alpha).^(xout - 1) * alpha;
[hz, xout] = hist(Z, 1 : m );

subplot(133);
bar(xout, hz/N);
hold on;
bar(xout, z_theo, 0.5, 'g');

