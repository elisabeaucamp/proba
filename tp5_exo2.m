clear variales;
close all;
clc;


%% Question a
k = [-2,-1,0,1,2,3,4,5,6,7];
p = [1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10,1/10];
mu = k*p'
sigma = sqrt((k.^2*p')-mu.^2) 
subplot(3,1,1);
bar(k,p);

%% Question b

X = conv(p,p);
subplot(3,1,2);
k_conv = [2*-2:1:2*7];
bar(k_conv,X);

%% Question c

n = 10;
densite = p;
for k=1:n-1
    densite = conv(densite,p);
end
k_densite = [-2*n:1:7*n];
subplot(3,1,3);
bar(k_densite,densite);
hold on;
mu_d = n*mu;
sigma_d = sqrt(n)*sigma;
densite_th = 1/(sigma_d*sqrt(2*pi))*exp(-(k_densite-mu_d).^2/(2*sigma_d^2));
plot(k_densite,densite_th,'r','Linewidth',4);


