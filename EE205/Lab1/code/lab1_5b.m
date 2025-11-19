a = 1;   
yn1 = 0; 
N = 31; 
n = 0:30; 

% 输入信号
x1 = zeros(1, N);    
x1(1) = 1;           % 初始化δ[n]

x2 = ones(1, N);     % 初始化u[n]

% 计算系统响应
y1 = diffeqn(a, x1, yn1); 
y2 = diffeqn(a, x2, yn1); 

% 绘制结果
figure;
grid on;

subplot(2,1,1);
stem(n, y1, 'filled', 'LineWidth', 1.5);
title('y1[n] ( x1[n] = \delta[n] )');xlabel('n');ylabel('value');
xlim([-0.5 30.5]);ylim([0 y1(N-1)*1.2]);

subplot(2,1,2);
stem(n, y2, 'filled', 'LineWidth', 1.5,'Color',[1,0,0]);
title('y2[n] ( x2[n] = u[n] )');xlabel('n');ylabel('value');
xlim([-0.5 30.5]);ylim([0 y2(N-1)*1.2]);

% 调整图形窗口
set(gcf, 'Position', [100 100 600 600]);