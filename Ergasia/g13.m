Ts = 0.002;
Nmax = t_max / Ts;
n1 = -Nmax:1:Nmax;
xs = cos(100*pi*n1*Ts) + cos(200*pi*n1*Ts) + sin(500*pi*n1*Ts);
x1 = zeros(1,length(t));
for k = 1:1:length(t)
    x1(k) = xs * sinc((t(k)-n1*Ts)/Ts)';
end
figure('Name','Reconstructed signal for  Ts = 0.002');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x1,'*b','LineWidth',1.2);
xlabel('-0.1 \leq t \leq -0.1');
ylabel('x(t) ans x1(t)');
grid on

