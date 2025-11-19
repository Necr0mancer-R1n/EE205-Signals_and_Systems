x1 = [1, 1, 1, 1, 1, 0, 0, 0, 0, 0]; 
h1 = [1, -1, 3, 0, 1]; 
y1=conv(x1,h1);
y2=conv(h1,x1);
nx = 0:length(x1)-1; 
nh = 0:length(h1)-1; 
ny = 0:length(y1)-1; 
figure;

subplot(4, 1, 1);
stem(nx, x1, 'b', 'LineWidth', 1.5);
title('Signal x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(4, 1, 2);
stem(nh, h1, 'r', 'LineWidth', 1.5);
title('Signal h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(4, 1, 3);
stem(ny, y1, 'g', 'LineWidth', 1.5);
title('Convolution y1[n] = x[n] * h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(4, 1, 4);
stem(ny, y2, 'filled', 'LineWidth', 1.5);
title('Convolution y2[n] = h[n] * x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;