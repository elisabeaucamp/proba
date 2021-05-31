clear variables;
close all;
clc;

N = 50000;
a = -2;
b = 3;

%% AFfichage courbes
X_emp = a + (b-a)*rand(1,N);
[h_emp,xout] = hist(X_emp,a:0.1:b);
I = trapz(xout,h_emp);
bar(xout,h_emp/I);
hold on;
X_th = 1/(b-a)*ones(1,length(xout));
%%h_th = hist(X_th,a:0.1:b);
plot(xout,X_th,'b','linewidth',2);

%% Calcul espérance
E_emp = mean(X_emp)
E_th = (a+b)/2

%% Calcul écart-type

e_emp = std(X_emp)
e_th = sqrt((b-a)^2/12)