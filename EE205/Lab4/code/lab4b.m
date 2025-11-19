dt = 0.01;          
T = 10;             
N = T/dt;           
t = 0:dt:T-dt;      
y = exp(-2*abs(t-5));
Y = dt * fft(y);
w = (-pi/dt) + (0:N-1)*(2*pi/(N*dt));
X_analytic = 4./(4 + w.^2);          
Y_analytic = X_analytic .* exp(-1j*5*w);
figure
subplot(2,1,1)
plot(t, y, 'b')
xlabel('时间 (s)')
ylabel('幅值')
title('时域信号 y(t) = e^{-2|t-5|}')
subplot(2,1,2)
plot(w, abs(Y_analytic), 'r')
xlabel('频率 (rad/s)') 
ylabel('幅度')
title('解析傅里叶变换幅度 |Y(jω)|')
xlim([-50 50])  