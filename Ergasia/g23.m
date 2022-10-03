% Original Signal Representation.
dt = 0.0001;
t_max = 0.1;
t = -t_max:dt:t_max;
%B to Ascii (Hex) = 42
x =  cos(42*pi*t) + sin(42*pi*t);
figure('Name','Original Signal Representation');
plot(t,x,'-r','LineWidth',1.5);
xlabel('-0.1 \leq t \leq +0.1');
ylabel('x(t)');
grid on

% FFT 
Fx = fft(x);
Wx = Fx .* conj(Fx);
Wx = fftshift(Wx);
figure('Name','Fourier Transform');
stem(Wx,'-r','LineWidth',1.5);
xlabel('Frequencies');
ylabel('F[x(t)]');
grid on

%IFFT 
IFx = ifft(Fx);
figure('Name','Inverse Fourier Transform');
plot(t,IFx,'-b','LineWidth',1.5);
grid on