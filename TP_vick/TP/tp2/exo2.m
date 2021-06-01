clear variables;
close all;

N = 1000000;


law = 1;

switch law 
    case 0
        
        x = zeros(1, N);
        rang = 10;
        
        for k = 1: N
            x(k) = LoiUniforme(rang);
        end
        [h, xout] = hist(x, 1: rang);
        bar(xout, h / N);
        
        hold on;
        h_theo = 1/rang * ones(1, rang);
        
        bar(xout, h_theo, 0.5, 'r')
        
        E_emp = sum( xout .* (h / N) )
        E_theo = rang / 2
        
        V = mean( (x - mean(x)).^2) % on pexu assui fair std, nb exo 1
        V_theo = (rang^2 - 1) / 12
        
        S = sqrt(V)
        S_theo = sqrt(V_theo)
        
    case 1
        x = zeros(1, N);
        p = 0.4
        
        for k = 1: N
            x(k) = LoiBernoulli(p);
        end
        [h, xout] = hist(x, 0:1);
        bar(xout, h / N);  
        
        hold on;
        h_theo = [1- p, p];
        
        bar(xout, h_theo, 0.5, 'r')
       
        E_emp = sum( xout .* (h / N) )
        E_theo = p
        
        V = mean( (x - mean(x)).^2)
        V_theo = p * (1 - p)
        
        S = sqrt(V)
        S_theo = sqrt(V_theo)

        
    case 2
        x = zeros(1, N);
        n = 40;
        p = 0.28;
        
        for k = 1: N
            x(k) = LoiBinomiale(n, p);
        end
        [h, xout] = hist(x, 1: n);
        bar(xout, h / N);  
        
        hold on;
        c = factorial(n) ./ (factorial( n - (1:n)) .* factorial(1:n));
        
        
        h_theo = c .* p.^(1:n) .* (1-p).^(n - (1:n));
        
        bar(xout, h_theo, 0.5, 'r');
        
        E_emp = sum( xout .* (h / N) )
        E_theo = n * p
        
        V = mean( (x - mean(x)).^2)
        V_theo = n * p * (1 - p)
        
        
        S = sqrt(V)
        S_theo = sqrt(V_theo)

    case 3
        x = zeros(1, N);

        p = 0.7;
        
        for k = 1: N
            x(k) = LoiGeometrique(p);
        end
        [h, xout] = hist(x, 1: max(x));
        bar(xout, h / N);  
        
        hold on;
        n = max(x)
        
        h_theo = (1 - p).^((1:n) - 1) * p;
        
        bar(xout, h_theo, 0.5, 'r');
        
        E_emp = sum( xout .* (h / N) )
        E_theo = 1 / p
        
        V = mean( (x - mean(x)).^2)
        V_theo = (1 - p) / p^2
        
        S = sqrt(V)
        S_theo = sqrt(V_theo)
        
end
        
            