clear variables ;
close all;
clc;
N = 5000; %Nb exp
loi = 2
switch loi
    case 1 %Loi Uniforme
        n = 25;
        X = zeros(1,N);
        for k = 1:N;
            X(k) = LoiUniforme(n);
        end
    case 2 %Loi Bernoulli
        p = 0.5
        n = 50
        X = zeros(1,2)
        for k = 1:n
            if LoiBernoulli(p) == 1
                X(1) = X(1) + 1
            else
                X(2) = X(2) + 1
            end
        end
end

[h_emp,xout] = hist(X,1:n);
bar(xout,h_emp);