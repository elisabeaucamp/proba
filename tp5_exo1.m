clear variables;
close all;
clc;

N = 50000;

%% Question1

U1 = rand(1,N);
U2 = rand(1,N);

X = sqrt(-2*log(U1)).*cos(2*pi*U2);
Y = sqrt(-2*log(U1)).*sin(2*pi*U2);

figure(1);
[h,xout] = hist(X,-5:0.1:5);
bar(xout,h/trapz(xout,h));

%% Question 2

mu = 4;
sigma = 3;

Z = X*sigma+mu;

figure(2);
[h_Z,zout] = hist(Z,-10:0.1:20);
bar(zout,h_Z/trapz(zout,h_Z));
hold on;

densite_th = 1/(sigma*sqrt(2*pi))*exp(-(zout-mu).^2/(2*sigma^2));
plot(zout,densite_th,'r','Linewidth',4);