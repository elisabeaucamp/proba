clear varables;
close all;
clc;

%%variables
N = 1000;
lambda = 0.3;
mu = 0.5;
alpha = lambda + mu - lambda*mu;
X = zeros(1,N);
Y = zeros(1,N);
Z = zeros(1,N);

%% Proba
for k = 1:N
    X(k) = LoiGeometrique(lambda);
    Y(k) = LoiGeometrique(mu);
    Z(k) = min(X(k),Y(k));
end

%% calcul des histogrammes
[h_X,xout] = hist(X,1:max(X));
[h_Y,yout] = hist(Y,1:max(Y));
[h_Z,zout] = hist(Z,1:max(Z));

%% calculs théoriques
hth_X = lambda*(1-lambda).^(xout-1);
hth_Y = mu*(1-mu).^(yout-1);
hth_Z = alpha*(1-alpha).^(zout-1);

%% affichage
subplot(1,3,1);
bar(xout,h_X/N,'g');hold on;bar(xout,hth_X,0.2,'r');
subplot(1,3,2);
bar(yout,h_Y/N,'g');hold on;bar(yout,hth_Y,0.2,'r');
subplot(1,3,3);
bar(zout,h_Z/N,'g');hold on;bar(zout,hth_Z,0.2,'r');
