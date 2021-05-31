clear variables;
close all;
clc;

%% Variables
N = 50000;
a = 1/log(6);
x = -2 : 0.1 : 3;
Fx = a./log(x+4);
Y = rand(1,N);

%% Affichage des courbes
plot(x,Fx);
hold on,
[h_emp,xout] = hist(X,10);
I = trapz(xout,h_emp);
bar(xout,h_emp/I);

%% exo2
n = 100000;
Y1 = 1/2 * rand(1,n);
Y2 = 1/2 + 3/2*rand(1,n);
##X1 = ;
##X2 = ;
##X = ;
##[h,xout] = ;
##bar();
##mu_emp = ;
##sigma_emp= ;
##mu_th = ;
##sigma_th = ;
##fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp,mu_th);
##fprintf('Ecart type empirique : %,\t Ecart type théorique:%f\n'sigma_emp,sigma_th);