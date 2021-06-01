clear variables;
close all;

N = 5000; % nb d'exp
n = 8; % nb boule
X = zeros(1,N); % var aleatoire

for k = 1:N
    b1 = 1;
    b2 = 1;
    while b1 == b2
        b1 = ceil ( (n) * rand());
        b2 = ceil ( (n) * rand());
    end

    X(k) = min(b1, b2)
    
end

##%loi expe
##[h_emp, xout] = hist(X, 1 : n );
##bar(xout, h_emp /N ); hold on;
##
##%loi theo
##h_th = 2 * (n - ( 1 : n )) ./ (n*(n-1));
##bar(1:n, h_th, 0.5, 'r');
##
##%eserance
##E_emp = sum( xout .* (h_emp / N) ) % on peu fair mean(X)
##
##
##Sigma_emp = std(X)
##V_emp = Sigma_emp^2
##
##E_th = (n + 1) / 3
##Sigma_th = sqrt(E_th) % GOD NO !!!

