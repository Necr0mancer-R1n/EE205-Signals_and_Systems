x1 = [1, 1, 1, 1, 1, 0, 0, 0, 0, 0]; 
h1 = [1, -1, 3, 0, 1]; 
h2 = [0, 2, 5, 4, -1]; 
nx1 = 0:9; 
nh1 = 0:4;
figure;
stem(nx1, x1, 'b', 'LineWidth', 2);
title('x_1[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot h1[n]
figure;
stem(nh1, h1, 'r', 'LineWidth', 2);
title('h_1[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot h2[n]
figure;
stem(nh1, h2, 'g', 'LineWidth', 2);
title('h_2[n]');
xlabel('n');
ylabel('Amplitude');
grid on;