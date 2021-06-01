clear variables;
close all;

n_cases=24;
cx=[0:n_cases];
cy=[0:n_cases];
[CX,CY]=meshgrid(cx,cy);
hold on;
mesh(CX,CY,zeros(n_cases+1,n_cases+1));


M = zeros(n_cases,n_cases);

for k = 1:537
    a = 1;
    switch a
        case 0
            x =  (n_cases) * rand();
            y = (n_cases) * rand();
            plot(x,y, 'r*');
            M( ceil(x), ceil(y) ) = M(ceil(x), ceil(y)) + 1;
        case 1
            M( 10, 100 ) = M(10, 10) + 1;
            % si on change on voie que la loie de poisson ne permet pas de
            % modeliser la repartitioon des imparct.
    end
end



M = M(:); % donne le rasulatat en ligne. permet d'allez chercher le ùax facielement

[h, xout] = hist(M, 0 : max(M) );
figure(2);
bar(xout, h);
hold on;

% loi de poisson

moy = mean(M);

loiPoi = exp( -moy ) * moy .^ ( xout )  ./ factorial( xout );
bar(xout , loiPoi * 537 , 0.5, 'g');


% ecart type :

ecart_type_emp = mean(M);
sigma_emp = std(M)

sigma_theo =  mean(M.^2) - mean(M)^2



