N = 40;
n = 0:1:N-1;
x = 0.9.^(n);
h = 0.5.^(n);
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
f40f = total_time / nums_run * 1000;

y1 = conv([x x],h);
y1 = y1(41:80);

figure
subplot(2,1,1);
stem(0:39,real(y2),'filled','color','r');hold on;
stem(0:39,real(y1),'-*','color','b');
legend('fft() & ifft()','conv()');xlim([0,39]),xlabel('n'),ylabel('y[n]');
title('y[n] = x[n]*h[n] in one period');
hold off;

subplot(2,1,2);
stem(0:39,real(y1)-real(y2),"filled"),xlim([0,39]),xlabel('n'),ylabel('\Deltay[n]'),
title('yc[n] - yf[n]');