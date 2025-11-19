% 定义信号 x3 的周期和相关参数
N = 32;
n = 0:N-1;

% 计算不同截断长度下的信号
trunc_lengths = [4, 6, 10, 14];
x3_trunc = zeros(length(trunc_lengths), N);

for k = 1:length(trunc_lengths)
    L = trunc_lengths(k);
    mid = floor(N/2);
    idx = mid - floor(L/2) + (1:L);
    a3_trunc = a3(idx);
    for p = 1:N
        for j = 1:L
            x3_trunc(k, p) = x3_trunc(k, p) + a3_trunc(j) * exp(1i * (j - ceil(L/2)) * (2 * pi/N) * (p - 1));
        end
    end
end

% 绘制结果
figure;
for i = 1:length(trunc_lengths)
    subplot(length(trunc_lengths), 1, i);
    stem(n, real(x3_trunc(i, :)), 'filled', 'LineStyle', '--');
    xlabel('n');
    ylabel(['x3_' num2str(trunc_lengths(i))]);
    legend(['x3_' num2str(trunc_lengths(i))]);
end    