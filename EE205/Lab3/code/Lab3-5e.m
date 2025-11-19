a1 = fft(x1_one_period) / length(x1_one_period);
a2 = fft(x2_one_period) / length(x2_one_period);
a3 = fft(x3_one_period) / length(x3_one_period);

figure;
subplot(3, 1, 1);
stem(0:length(a1)-1, abs(a1), 'filled');
title('DTFS Magnitude of x_1[n]');
xlabel('k'); ylabel('|a_1[k]|');
xlim([0, 7]);

subplot(3, 1, 2);
stem(0:length(a2)-1, abs(a2), 'filled');
title('DTFS Magnitude of x_2[n]');
xlabel('k'); ylabel('|a_2[k]|');
xlim([0, 15]);

subplot(3, 1, 3);
stem(0:length(a3)-1, abs(a3), 'filled');
title('DTFS Magnitude of x_3[n]');
xlabel('k'); ylabel('|a_3[k]|');
xlim([0, 31]);


dc_x1_predicted = mean(x1_one_period); % 预测值
dc_x1_actual = a1(1); % MATLAB 计算结果
fprintf('x1: Predicted DC = %.4f, Actual DC = %.4f\n', dc_x1_predicted, dc_x1_actual);

dc_x2_predicted = mean(x2_one_period);
dc_x2_actual = a2(1);
fprintf('x2: Predicted DC = %.4f, Actual DC = %.4f\n', dc_x2_predicted, dc_x2_actual);

dc_x3_predicted = mean(x3_one_period);
dc_x3_actual = a3(1);
fprintf('x3: Predicted DC = %.4f, Actual DC = %.4f\n', dc_x3_predicted, dc_x3_actual);