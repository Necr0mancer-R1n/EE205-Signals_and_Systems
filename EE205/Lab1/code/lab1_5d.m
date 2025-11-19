a = 1/2;
N = 31; 
n = 0:30; 
x = ones(1, N);		%初始化u[n]

% 初始y[-1]
yn1_case1 = 0;
yn1_case2 = 0.5;

% 计算系统响应
y1 = diffeqn(a, x, yn1_case1); 
y2 = diffeqn(a, x, yn1_case2);  

% 绘制结果
figure;
grid on;

subplot(2,1,1);
stem(n, y2, 'filled','LineWidth', 1.5,'Color', [1 0 0]);
hold on;
stem(n, y1,  'LineWidth', 1.5, 'Color', [0 0 1]);
title('y[n]  ( y1[-1] = 0  y2[-1] = 0.5 )');xlabel('n');ylabel('value');
xlim([-0.5 30.5]);ylim([0.1 max([y1(:);y2(:)])*1.2]);
legend('y2', 'y1','Location', 'northwest');
hold off;

subplot(2,1,2);
stem(n, y2-y1, 'filled', 'LineWidth', 1.5, 'Color', [0.5 0 0.5]);
title('响应差值 y2[n] - y1[n]');xlabel('n');ylabel('value');
xlim([-0.5 30.5]);ylim([-0.05 max(y2-y1)*1.2]);

% 调整图形窗口
set(gcf, 'Position', [100 100 800 800]);