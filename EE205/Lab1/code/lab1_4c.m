n = 0:10;
x = 0.5.^n; % x[n] = (0.5)^n

% 计算 y[n]
y = log(x);

figure;
subplot(2,1,1);
stem(n, x);
title('x[n] = (0.5)^n');
subplot(2,1,2);
stem(n, y);
title('y[n] = log(x[n])');