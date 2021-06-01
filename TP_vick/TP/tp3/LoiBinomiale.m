function nb = LoiBinomiale(n, p)
    %  p compris entre 0 et 1
    nb = 0;
    for k = 1:n
        nb = nb + LoiBernoulli(p);
    end
end
