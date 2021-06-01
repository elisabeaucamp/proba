close all;
clear variables;

k = [3,4,5,6,7,8];
p = 1/20 * [4,1,3,7,2,3];

%affichage
bar(k, p)

% E(X)

moy = sum(k .* p)

%ecart type

%E(X²)
moy2 = sum(k.^2 .* p);

EcartType = sqrt( moy2 - moy^2 )

% question b

c = conv(p, p)

bar(1:11 , c);

% les veleur prise sont la somme de deux fois X
