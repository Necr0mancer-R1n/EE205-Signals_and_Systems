n = -5:5;
x1 = [zeros(1,5), 1, zeros(1,5)]; % x1[n] = delta[n]
x2 = 2 * x1; % x2[n] = 2*delta[n]

y1 = sin((pi/2) * x1);
y2 = sin((pi/2) * x2);

% 检查线性性
y_sum = sin((pi/2) * (x1 + x2));
y1_plus_y2 = y1 + y2;

figure;
subplot(2,1,1);
stem(n, y_sum);
title('y[n] = sin((\pi/2)(x1[n] + x2[n]))');
subplot(2,1,2);
stem(n, y1_plus_y2);
title('y1[n] + y2[n]');