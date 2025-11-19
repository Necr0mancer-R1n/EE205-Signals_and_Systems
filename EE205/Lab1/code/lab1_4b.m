n = -5:9;
x = [zeros(1,5), ones(1,10)]; % x[n] = u[n]

% 计算 y[n]
y = zeros(1, length(n));
for i = 1:length(n)-1
    y(i) = x(i) + x(i+1);
end

figure;
subplot(2,1,1);
stem(n, x);
title('x[n] = u[n]');
subplot(2,1,2);
stem(n, y);
title('y[n] = x[n] + x[n+1]');