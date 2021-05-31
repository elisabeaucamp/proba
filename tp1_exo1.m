clear variables ;
close all ;
clc ;

%% Question 1
 N = 100 ;
% X1 = LancerDeSixFaces(N);
% [h1,xout1] = hist(X1,1:6) ;
% figure(1)
% bar(xout1,h1);

%% Question 2

% Jeu A
cpt = 0 ;
for k = 1:N
    Y = LancerDeSixFaces(4) ;
    h = hist(Y,1:6) ; % dans h il y a six nombre, chaque nombre représente le nombre de fois que chaque face a été obtenue
    if h(6) > 0
        cpt = cpt + 1 ;
    end
end
prob_emp = cpt/N; %cas favorables/cas possible
prob_th = 1 - (5/6)^4; %coder la solution exacte 

% Jeu B
cpt1 = 0;
for k = 1:N
    Y2 = LancerDeSixFaces(24);
    Y3 = LancerDeSixFaces(24);
    Y_tot = Y2 + Y3;
    h2 = hist(Y_tot,2:12);
    if h2(11)> 0
        cpt1 = cpt1 + 1;
    end
end
prob_emp1 = cpt1/N;
prob_th1 = 1 - 24*(5/6)^2;
        
        
        
        
        
        