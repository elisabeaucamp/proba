clear variables;
close all;
clc;

%% Variables
N = 50000;
X = rand(1,N);
Y = rand(1,N);
lambda_x = 1;
lambda_y = 2;

X = -1/lambda_x*log(1-X);
Y = -1/lambda_y*log(1-Y);

U = X + 2*Y;

%% affichage
[h_U,u_out] = hist(U,50);
bar(u_out,h_U/trapz(u_out,h_U));
hold on;

densite_X = lambda_x*exp(-lambda_x*X);
densite_Y = lambda_y*exp(-lambda_y*Y);
densite_U = u_out.*exp(-u_out);
plot(u_out,densite_U,'r','Linewidth',4);

%% Esperance
esp_th = 2;
esp_emp = mean(U)

%% Variance
var_th = 2;
var_emp = std(U)^2