%e
N = 40; 
x = (0.9).^(0:N-1); 
h = (0.5).^(0:N-1); 
total_time = 0;

nums_run = 50;
for run = 1: nums_run
    tic;
    y = conv([x x],h);
    total_time = total_time + toc;
end

f40c = total_time / nums_run * 1000;

y = y(41:80); 

figure;
stem(0:N-1,y,"filled"); 
xlabel('n');
ylabel('y[n]');
title('Periodic Convolution of x[n] and h[n]');
grid on;

%f
N = 80; 
x = (0.9).^(0:N-1); 
h = (0.5).^(0:N-1); 
total_time = 0;

nums_run = 50;
for run = 1: nums_run
    tic;
    y = conv([x x],h);
    total_time = total_time + toc;
end

f80c = total_time / nums_run * 1000;

y = y(81:160); 

figure;
stem(0:N-1,y,"filled"); 
xlabel('n');
ylabel('y[n]');
title('Periodic Convolution of x[n] and h[n]');
grid on;