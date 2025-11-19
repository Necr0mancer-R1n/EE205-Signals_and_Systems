function y = diffeqn(a, x, yn1)

N = length(x);     % 输入信号x的长度N
y = zeros(1, N);   % 预分配y

% 计算生成 y[n]
y(1) = a * yn1 + x(1); 

for i = 2:N
    y(i) = a * y(i-1) + x(i); 
end
end