a = 1;
yn1 = -1;     
N = 31;  
n = 0:30;        

% 输入信号
x1 = ones(1, N);      % 初始化u[n]
x2 = 2 * ones(1, N);  % 初始化2u[n]

% 计算系统响应
y1 = diffeqn(a, x1, yn1); 
y2 = diffeqn(a, x2, yn1); 

difference = 2*y1 - y2;  

% 绘制结果
figure;
grid on;

subplot(3,1,1);
stem(n, y1, 'filled', 'LineWidth', 1.5);
title('y1[n] ( x1[n] = u[n] )');xlabel('n'); ylabel('value');
xlim([-0.5 30.5]); ylim([0,max(y1)*1.2]);

subplot(3,1,2);
stem(n, y2, 'filled', 'LineWidth', 1.5);
title('y2[n] ( x2[n] = 2u[n] )');xlabel('n'); ylabel('value');
xlim([-0.5 30.5]);ylim([0,max(y2)*1.2]);

subplot(3,1,3);
stem(n, difference, 'filled', 'LineWidth', 1.5, 'Color', [1 0 0]);
title('差值 2y1[n] - y2[n]');xlabel('n'); ylabel('value');
xlim([-0.5 30.5]);ylim([min(2.*y1-y2)*1.2,0]);

% 调整图形窗口
set(gcf, 'Position', [100 100 800 900]);