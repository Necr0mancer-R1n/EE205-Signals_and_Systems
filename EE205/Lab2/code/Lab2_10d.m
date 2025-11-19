load lineup.mat;
ay = [1 zeros(1, 999) 0.5];
z = filter(1, ay, y);
n1 = 0:6999;

figure;
subplot(2,1,1);
plot(n1, y(1:7000));
title('y[n]');xlabel('n'); ylabel('Value');

subplot(2,1,2);
plot(n1, z(1:7000));
title('z[n]');xlabel('n'); ylabel('Value');

set(gcf, 'Position', [100 100 600 600]);