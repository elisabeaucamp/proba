clear variables;
close all;
clc;

%% Variables

a = 1;
b = 2;
N = 50000;

X = a + (b-a)*rand(1,N);
Y = a + (b-a)*rand(1,N);
S = X+Y;
P = X.*Y;
Q = X./Y;
subplot(2,2,1);
[h_X,x_out]= hist(X,50);
bar(x_out,h_X/trapz(x_out,h_X));
subplot(2,2,2);
[h_S,s_out]= hist(S,50);
s = 2:0.1:3
ss = 3:0.1:4
bar(s_out,h_S/trapz(s_out,h_S));
hold on;
plot(s,s-2,'r');
s-2
hold on;
plot(ss,4-ss);
subplot(2,2,3);
[h_P,p_out]= hist(P,50);
p = 1:0.1:2;
pp = 2:0.1:4;
bar(p_out,h_P/trapz(p_out,h_P));
hold on;
plot(p,log(p));
hold on;
plot(pp,2*log(2)-log(pp));
subplot(2,2,4);
[h_Q,q_out]= hist(Q,50);
q = 0.5:0.1:1;
qq = 1:0.1:2;
bar(q_out,h_Q/trapz(q_out,h_Q));
hold on;
plot(q,2-1./(2.*q.^2));
hold on;
plot(qq,2./qq.^2-1/2);

%% esperance

esp_s = mean(S)
esp_p = mean(P)
esp_q = mean(Q)


%% exercice 5 td3

figure(2);
X1 = rand(1,N);
Y1 = rand(1,N);

Z1 = min(X,Y);

[h_Z1,z_out] = hist(Z1,50);
bar(z_out,h_Z1/trapz(z_out,h_Z1));
hold on;
t_out = 0:0.1:1
plot(t_out,2*(1-t_out),'g');










