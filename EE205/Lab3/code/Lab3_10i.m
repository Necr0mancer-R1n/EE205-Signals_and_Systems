N = 1000;
n = 0:1:N-1;
x = 0.9.^(n);
h = 0.5.^(n);
total_time = 0;
nums_run = 50;
for run = 1: nums_run
    tic;
    y = conv([x x],h);
    total_time = total_time + toc;
end

f1000c = total_time / nums_run * 1000;
total_time = 0;
nums_run = 50;
for run = 1: nums_run
    tic;
    a = 1/N*fft(x,N);
    b = 1/N*fft(h,N);
    c = a.*b;
    y2 = N*N*ifft(c);
total_time = total_time + toc;
end

f1000f = total_time / nums_run * 1000;