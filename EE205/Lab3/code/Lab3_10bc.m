%b
N = [8, 32, 64, 128, 256];
dtfscomps = zeros(1, length(N));  

i=1;
for n = N
    x = (0.9).^(0:n-1);
    total_time = 0;
    nums_run = 50;
    for run = 1:nums_run
        tic;
        X = dtfs(x,0);
        total_time = total_time + toc;
    end
    dtfscomps(i) = total_time / nums_run *1000;
    i= i + 1;
end

N1 = log2(N); 
figure;
stem(N1, dtfscomps, 'filled');
xlabel('log2(N)');ylabel('time (ms)');title('DTFS Runtime');

%c
fftcomps = zeros(1, length(N));  

i = 1;
for n = N
    x = (0.9).^(0:n-1);
    total_time = 0;
    nums_run = 50;
    for run = 1:nums_run
        tic;
        X = fft(x);
        total_time = total_time + toc;
    end

    fftcomps(i) = total_time / nums_run *1000;
    i = i + 1;
end

figure,hold on;
loglog(N,dtfscomps,'r');hold on;
loglog(N,fftcomps,'b');
legend('DTFS time','FFT time');xlabel('N');ylabel('time (ms)');title('Runtime Comparison')
grid on;hold off;