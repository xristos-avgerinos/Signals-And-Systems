Ts = 0.001;
Nmax = t_max / Ts;
n2 = -Nmax:1:Nmax;
xs = cos(100*pi*n2*Ts) + cos(200*pi*n2*Ts) + sin(500*pi*n2*Ts);
x2 = zeros(1,length(t));

for k = 1:1:length(t)
    x2(k) = xs * sinc((t(k)-n2*Ts)/Ts)';
end

figure('Name','Reconstructed signal for  Ts = 0.001');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x2,'*b','LineWidth',1.2);
xlabel('-0.1 \leq t \leq +0.1');
ylabel('x(t) and x2(t)');
grid on
