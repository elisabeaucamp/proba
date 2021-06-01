clear variables;
close all;

n = 50000;

% On sais que F(X) = Y ~ U([0; 1])
%donc on genere Y comme dans l'exo 1 
% et on fait X = F^-1 (Y)

%empirique
Y = rand(1, n);
X = exp( Y * log(6) ) - 4;

[h, xout] = hist(X, 10);
aire = trapz(xout, h)

bar(xout, h/ aire)
hold on;

%theo 
a = -3;
b = 2;
alpha = 1/ log(6);

x = a : ( abs(a) + abs(b) ) / (n - 1) : b;
f = alpha ./ (x + 4);

plot(x, f)

%calcule

E_emp = mean(xout)
E_theo = ( a + b ) / 2

V_emp = mean(xout.^2) - mean(xout).^2
V_theo = (b-a)^2 / 12

sigma_emp = sqrt( V_emp )
sigma_theo = sqrt( V_theo )


% partie 2 

figure(2);

n=100000;% nombre d’expériences

Y1= rand(1, n / 2) / 2; 
Y2= rand( 1, n/2) / 2  + 0.5;

X1= sqrt( 8 * Y1 ); % simulation de la VA X sur [0,2[
X2= -sqrt(-8 * Y2 + 8 ) + 4; % simulation de la VA X sur [2,4[

X= [X1, X2];% concaténation des VA X1 et X2

[h,xout]= hist(X, 30);% calcul de l’histogramme de X
bar(xout, h);% affichage de l’histogramme de X

mu_emp= mean(X);
sigma_emp= sqrt( mean(X.^2) - mean(X).^2 ); % écart type empirique
mu_th= trapz(0.1 :2/( (n/2 - 1) ):2 , (0.1 :2/( (n/2 - 1) ):2) .* 1/4 .* (0.1 :2/( (n/2 - 1) ):2) ) + trapz(2 :2/( (n/2 - 1) ):4 , (2 :2/( (n/2 - 1) ):4) .* (1/4 .* (4 - (0.1 :2/( (n/2 - 1) ):2)))) % moyenne théorique
sigma_th=1% écart type théoriquef

fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp,mu_emp);
fprintf('Ecart type empirique : %f,\t Ecart type théorique : %f\n',sigma_emp,sigma_th);