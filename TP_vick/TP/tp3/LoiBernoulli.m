function x = LoiBernoulli(p)
    exp = rand();
    if exp <= p
        x = 1;
    else
        x = 0;
    end
end