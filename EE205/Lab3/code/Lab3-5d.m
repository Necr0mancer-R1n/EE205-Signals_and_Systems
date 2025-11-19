%% 部分 (d): 定义信号并绘制时域图

% 定义信号的一个周期
x1_one_period = [ones(1, 8)]; % N1 = 8
x2_one_period = [ones(1, 8), zeros(1, 8)]; % N2 = 16
x3_one_period = [ones(1, 8), zeros(1, 24)]; % N3 = 32

% 重复信号以覆盖 0 <= n <= 63
n = 0:63;
x1 = repmat(x1_one_period, 1, ceil(64 / length(x1_one_period)));
x1 = x1(1:64);
x2 = repmat(x2_one_period, 1, ceil(64 / length(x2_one_period)));
x2 = x2(1:64);
x3 = repmat(x3_one_period, 1, ceil(64 / length(x3_one_period)));
x3 = x3(1:64);

% 绘制时域图
figure;
subplot(3, 1, 1);
stem(n, x1, 'filled');
title('x_1[n] (Period N_1 = 8)');
xlabel('n'); ylabel('Amplitude');
xlim([0, 63]); ylim([0, 1.2]);

subplot(3, 1, 2);
stem(n, x2, 'filled');
title('x_2[n] (Period N_2 = 16)');
xlabel('n'); ylabel('Amplitude');
xlim([0, 63]); ylim([0, 1.2]);

subplot(3, 1, 3);
stem(n, x3, 'filled');
title('x_3[n] (Period N_3 = 32)');
xlabel('n'); ylabel('Amplitude');
xlim([0, 63]); ylim([0, 1.2]);