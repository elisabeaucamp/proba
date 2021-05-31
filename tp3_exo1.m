clear variables;
close all;
clc;

n_cases=24;
n_impacts=537;
cx=[0:n_cases];
cy=[0:n_cases];
figure(1);
[CX,CY]=meshgrid(cx,cy);hold on;
mesh(CX,CY,zeros(n_cases+1,n_cases+1));hold on;
x = zeros(1,n_impacts);
y = x;
M = zeros(n_cases,n_cases);
lambda = n_impacts/n_cases^2; %on met bien un carré car on veut le nombre total de cases

for k = 1:n_impacts
    x(k) = n_cases*rand(1);
    y(k) = n_cases*rand(1);
    i = ceil(x(k));
    j = ceil(y(k));
    M(i,j) = M(i,j) + 1 ; 
end
plot(x,y,'*r')
M=M(:);
M;
figure(2);
[h_exp,xout] = hist(M,0:max(M));hold on;
bar(xout,h_exp);
h_th = (exp(-lambda)*lambda.^xout)./factorial(xout);
h_th = h_th*n_impacts
bar(xout,h_th,0.5,'g');
ecart_exp = std(M)
ecart_th = lambda