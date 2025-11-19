a0 = 1;
a2 = exp(1j * pi/4);
a_neg2 = conj(a2);
a4 = 2 * exp(1j * pi/3);
a_neg4 = conj(a4);
a1=a_neg4;
a3=a_neg2;
a = [a0, a1, a2, a3, a4];

N = 5;
x = zeros(1, N); % 初始化x向量
for n = 0:N - 1
    for k = 0:N - 1
        x(n + 1)= x(n + 1)+ a(k + 1)*exp(1j * 2*pi/N * k * n);
    end
    % 处理可能的舍入误差
    if abs(imag(x(n + 1))) < 1e-10
        x(n + 1) = real(x(n + 1));
    elseif abs(real(x(n + 1))) < 1e-10
        x(n + 1) = imag(x(n + 1))*1j;
    end
end

n = 0:N - 1;
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('One - period of the Discrete - time Signal');