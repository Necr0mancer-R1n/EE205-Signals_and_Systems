n = -5:5;
x1 = [zeros(1,5), 1, zeros(1,5)]; % x1[n] = delta[n]
x2 = [zeros(1,5), -1, zeros(1,5)]; % x2[n] = -delta[n]

y1 = sin((pi/2) * x1);
y2 = sin((pi/2) * x2);

figure;
subplot(2,1,1);
stem(n, y1);
title('y1[n] = sin((\pi/2)x1[n])');
subplot(2,1,2);
stem(n, y2);
title('y2[n] = sin((\pi/2)x2[n])');