clear variables;
close all;


N = 1000;

%question1
figure(1)
y = rand(2,N);

cnt = 0;

for k = 1: N
    if (y(1, k)^2 + y(2, k)^2)^(1/2) <= 1
        cnt = cnt + 1;
        plot(y(1,k), y(2,k), 'gx'); hold on;
    else
        plot(y(1,k), y(2,k), 'rx'); hold on;   
    end
end


prob = cnt / N;
pi_exp = prob * 4
N
cnt

angles = 0 : 0.01 :pi/2;

X = cos(angles);
Y = sin(angles);

plot(X, Y );


%question 2
figure(2)

x = 1.8 * rand(1, N) + 1;
y = 0.5 * rand(1,N);

cnt = 0;

for k = 1: N
    if y(k) < log(x(k)) / (x(k)^2)
        cnt = cnt + 1;
        plot(x(k), y(k), 'gx'); hold on;
    else
        plot(x(k), y(k), 'rx'); hold on;   
    end
end


prob = cnt / N;
N
cnt
valInteg = cnt / N


X = 1 : 0.01 : exp(1);

Y = log(X) ./ ((X.^2));

integ = trapz(X,Y)

plot(X, Y );


    


