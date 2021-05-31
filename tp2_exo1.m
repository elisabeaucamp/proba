clear variables ;
close all;
clc ;
N = 10000; %nombre d'expériences
X = zeros(1,N); %variable aléatoire
n = 10;
for k = 1:N %tout ça pour le calcul de X
    %utiliser rand
    boules = ceil(n*rand(1,2));
    %faire une boucle while
    while boules(1) == boules(2);
        boules = ceil(n*rand(1,2));
    end
    X(k) = min(boules(1),boules(2));
end

%loi de probabilité empirique
[h_emp,xout] = hist(X,1:n-1);%histogramme
bar(xout,h_emp/N); %affichage
hold on;

%loi de probabilité théorique
h_th = (2*(n-xout))/(n*(n-1));%histogramme
bar(xout,h_th,0.5,'w'); %affichage

%moyenne empirique : mean
%ecart type empirique : std
esp_emp = mean(X)
var_emp = std(X)^2

%moyenne et ecart type théorique
esp_th = (n+1)/3
var_th = (n^2-n-2)/18