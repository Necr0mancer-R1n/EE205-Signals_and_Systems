% 清空命令窗口和工作区
clc;
clear;

% 读取音频文件
[x, fs] = audioread('C_01_01(1).wav');
x = x';
t = linspace(0, length(x)/fs, length(x));

% 绘制原始音频信号
figure;
plot(t, x, 'Color', [234, 97, 145]/255);
xlabel('t');
ylabel('y(t)');
grid on;
legend('y(t) without rawing');

% 功率谱估计与滤波器设计
y10 = repmat(x, 1, 10);
nfft = 512;
noverlap = nfft/2;
window = hamming(nfft);
[P, w] = pwelch(y10, window, noverlap, nfft, fs);
b = fir2(3000, w/(fs/2), sqrt(P/max(P)));
[H, W] = freqz(b, 1);

figure;
plot(W, abs(H), 'LineWidth', 1.3, 'Color', [225, 145, 89]/255);
xlabel('w');
ylabel('H(jw)');
grid on;
legend('H(jw)');

% 生成带限噪声信号
N = length(x);
noise = 1 - 2 * rand(1, N);
SSN = filter(b, 1, noise);

figure;
plot(t, SSN, 'LineWidth', 1.0, 'Color', [225, 189, 145]/255);
xlabel('t');
ylabel('SSN(t)');
grid on;
legend('SSN(t)');

% 调整噪声幅度并与原始信号叠加
SSNf = SSN/norm(SSN)*norm(x)*(10^0.25);
SNR = 20*log10(norm(x)/norm(SSNf));
y0 = x + SSNf;
y = y0/norm(y0)*norm(x);

figure;
plot(t, y, 'LineWidth', 1.0);
xlabel('t');
ylabel('y(t)');
grid on;
legend('y(t)');

% 设计巴特沃斯滤波器并绘制包络波形
[b1, a1] = butter(2, 100/(0.5*fs));
[b2, a2] = butter(2, 200/(0.5*fs));
[b3, a3] = butter(2, 300/(0.5*fs));
[b4, a4] = butter(6, 200/(0.5*fs));

yb1 = filter(b1, a1, abs(x));
yb2 = filter(b2, a2, abs(x));
yb3 = filter(b3, a3, abs(x));
yb4 = filter(b4, a4, abs(x));

figure;
subplot(3, 1, 1);
plot(t, yb1);
xlabel('t');
ylabel('Envelop Wave');
grid on;
legend('Order=2,f=100hz');

subplot(3, 1, 2);
plot(t, yb2);
xlabel('t');
ylabel('Envelop Wave');
grid on;
legend('Order=2,f=200hz');

subplot(3, 1, 3);
plot(t, yb3);
xlabel('t');
ylabel('Envelop Wave');
grid on;
legend('Order=2,f=300hz');

figure;
subplot(2, 1, 1);
plot(t, yb1);
xlabel('t');
ylabel('Envelop Wave');
grid on;
legend('Order=2,f=200hz');

subplot(2, 1, 2);
plot(t, yb4);
xlabel('t');
ylabel('Envelop Wave');
grid on;
legend('Order=6,f=200hz');

% 保存叠加后的信号为音频文件
audiowrite('new_signal.wav', y0, fs);