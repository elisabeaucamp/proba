clear variables ;
close all ;
clc ;

N = 50 ;
nb_dedans = 0;
nb_dehors = 0;
x = 1:1/1000:exp(1);

##%% Question 1
##
##y = sqrt(1-x.^2);
##plot(y,x);hold on ;
##axis([0 1 0 1]);
##
## for k = 1:N
##     p = rand(1,2);
##     if p(2)^2+p(1)^2 <1
##         plot(p(2),p(1),'*r');
##         nb_dedans = nb_dedans + 1;
##     end
##     if p(2)^2+p(1)^2 >1
##         plot(p(2),p(1),'*g');
##         nb_dehors = nb_dehors + 1;
##     end
## end
% fprintf('Nombre total de points :\n' , N)
% fprintf('Nombre de points dans le quadrant :\n'  , nb_dedans)
% fprintf('Valeur approximative de pi : 3.1192000')

%% Question 2
clc ;
y = log(x)./(x.^2);
plot(x,y);hold on ;
axis([1 exp(1) 0 0.5])
for k = 1:N
    p = [1 + (exp(1)-1)*rand(1,1);0.5*rand(1,1)];
    if p(2) <log(p(1))./(p(1).^2) ;
        plot([0 p(1)],[0 p(2)],'*g');
        nb_dedans = nb_dedans + 1;
    else 
        plot([0 p(1)],[0 p(2)],'*r');
        nb_dehors = nb_dehors + 1;
    end
end

##%% Question 3






