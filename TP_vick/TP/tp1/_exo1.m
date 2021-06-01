clear variables;
N = 10000;

% y = LancerDeSixFace(N);
% [h, xout] = hist(y, 1:6);
% bar(xout, h);

%jeu A

p = 0;

for k = 1:N
    
    y = LancerDeSixFace(4);
    [h, xout] = hist(y, 1:6);
    
    if h(6) > 0 
        p = p + 1;
    end
end

probA_exp = p / N
probA_theo = 1 - ( (5/6)^4 )


%jeuB

p = 0;

for k = 1:N
    
    y1 = LancerDeSixFace(24);
    y2 = LancerDeSixFace(24);
    
    test = 1;
    index = 1;
    while test == 1 && index < 25
        
        if y1(index) == 6 && y2(index) == 6
            test = 0;
            p = p + 1;
        end
        
        index = index + 1;
 
    end
end
% nb sino on fait la sommes des paire et on hist
% en rechrchant les 12. C bien aussi

probB_exp = p / N
probB_theo = 1 - ( (35/36)^24 )