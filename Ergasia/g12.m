
% Original Signal Representation.
dt = 0.0001;
t_max = 0.1;
t = -t_max:dt:t_max;
x = cos(100*pi*t) + cos(200*pi*t) + sin(500*pi*t);
figure('Name','Original signal');
plot(t,x,'-r','LineWidth',1.3);
xlabel('-0.1 \leq t \leq +0.1');
ylabel('x(t)');
grid on
