load('ctftmod.mat');
%a
z_signal = [dash, dash, dot, dot]; 

figure;
plot(t(1:length(z_signal)), z_signal);
xlabel('t');
ylabel('z(t)');
title('Z 的摩尔码');

%b
figure;
freqs(bf, af); 
xlabel('频率 (Hz)');
ylabel('增益');
title('低通滤波器的频率响应');

%c
y_dash = lsim(bf, af, dash, t(1:length(dash)));
y_dot = lsim(bf, af, dot, t(1:length(dot)));

figure;
subplot(2, 1, 1);
plot(t(1:length(dash)), dash);
hold on;
plot(t(1:length(y_dash)), y_dash, '--');
title('dash信号与滤波后的dash信号');
legend('原始dash', '滤波后的dash');

subplot(2, 1, 2);
plot(t(1:length(dot)), dot);
hold on;
plot(t(1:length(y_dot)), y_dot, '--');
title('dot信号与滤波后的dot信号');
legend('原始dot', '滤波后的dot');

%d
y_mod = dash .* cos(2*pi*f1*t(1:length(dash)));

figure;
plot(t(1:length(dash)), y_mod);
xlabel('时间 t');
ylabel('调制后的信号');
title('调制后的dash信号');

y_filtered = lsim(bf, af, y_mod, t(1:length(dash)));

figure;
plot(t(1:length(dash)), y_filtered);
xlabel('时间 t');
ylabel('滤波后的信号');
title('滤波后的调制信号');

%f
m1t = x.*cos(2*pi*f1*t);
m1 = 2*lsim(bf,af,m1t,t);
figure 
plot(t,m1);
xlabel('t')
ylabel('m1')
grid on
legend('m1')

%g
m2t = x.*sin(2*pi*f2*t);
m2 = 2*lsim(bf,af,m2t,t);
figure 
subplot(2,1,1)
plot(t,m2,'r');
xlabel('t')
ylabel('m2')
grid on
legend('m2')
m3t = x.*sin(2*pi*f1*t);
m3 = 2*lsim(bf,af,m3t,t);
subplot(2,1,2)
plot(t,m3);
xlabel('t')
ylabel('m3')
grid on
legend('m3')