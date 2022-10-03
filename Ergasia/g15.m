Ts = 0.01;
Nmax = t_max / Ts;
n3 = -Nmax:1:Nmax;
xs = cos(100*pi*n3*Ts) + cos(200*pi*n3*Ts) + sin(500*pi*n3*Ts);
x3 = zeros(1,length(t));

for k = 1:1:length(t)
    x3(k) = xs * sinc((t(k)-n3*Ts)/Ts)';
end

figure('Name','Reconstructed signal for  Ts = 0.01');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x3,'*b','LineWidth',1.2);
xlabel('-0.1 \leq t \leq -0.1');
ylabel('x(t) ans x3(t)');
grid on