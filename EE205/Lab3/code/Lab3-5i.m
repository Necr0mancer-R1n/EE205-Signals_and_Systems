function a = dtfs(x, n_init)
    N = length(x);
    a = zeros(1, N); 
    for k = 0:N-1
        sum = 0;
        for n = 0:N-1
            sum = sum + x(n + 1) * exp(-1j * (2 * pi / N) * k * (n +n_init));
        end
    a(k + 1) = sum/N;
    end
end


% 验证示例
disp('dtfs([1 2 3 4], 0)');
disp(dtfs([1 2 3 4], 0));

disp('dtfs([1 2 3 4], 1)');
disp(dtfs([1 2 3 4], 1));

disp('dtfs([1 2 3 4], -1)');
disp(dtfs([1 2 3 4], -1));

disp('dtfs([2 3 4 1], 0)');
disp(dtfs([2 3 4 1], 0));

disp('dtfs([ones(1,4) zeros(1,4)], 0)');
disp(dtfs([ones(1,4) zeros(1,4)], 0));

disp('dtfs([ones(1,4) zeros(1,4)], 2)');
disp(dtfs([ones(1,4) zeros(1,4)], 2));
