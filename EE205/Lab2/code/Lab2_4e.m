x1 = [1, 1, 1, 1, 1]; 
he1 = [1, -1, 3, 0, 1];
he2 = [0,0,he1];

ye1 = conv(x1, he1);
ye2 = conv(x1, he2);

nx1 = 0:4;
nhe1 = 0:4;
nhe2 = 0:6; 
nye1 = nx1(1)+nhe1(1):nx1(end)+nhe1(end); 
nye2 = nx1(1)+nhe2(1):nx1(end)+nhe2(end); 

% 绘制图片
figure;
subplot(2,1,1);
stem(nye1+2, ye1, 'b','filled', 'LineWidth', 2);
title('y_{e1}[n-2]');
xlabel('n');
ylabel('Value');
xlim([0, max(nye2)+2]);

subplot(2,1,2);
stem(nye2, ye2, 'r', 'filled', 'LineWidth', 2);
title('y_{e2}[n]');
xlabel('n');
ylabel('Value');
xlim([0, max(nye2)+2]);