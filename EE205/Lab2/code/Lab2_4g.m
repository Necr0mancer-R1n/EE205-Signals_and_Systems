xg = [2, 0, 0, 0, 0];
h2 = [0, 2, 5, 4, -1];
nxg = 0:4;
nh2 = 0:4;

yga = xg .^ 2;
ygb = conv(xg, h2);
nygb = nxg(1)+nh2(1):nxg(end)+nh2(end);

yga_extended = [yga, zeros(1, length(ygb) - length(yga))]; % 补零
yg1 = yga_extended + ygb;
nyg1 = nygb;

hg1 = [1, 0, 0, 0, 0] .^ 2; 
h_parallel = hg1 + h2;

yg2 = conv(xg, h_parallel); 
nyg2 = nxg(1)+nh2(1):nxg(end)+nh2(end);

%绘制图片
figure;
subplot(2,1,1);
stem(nyg1, yg1, 'b', 'filled','LineWidth',2);
title('y_{g1}[n]');
xlabel('n'); ylabel('Value');

subplot(2,1,2);
stem(nyg2, yg2, 'r', 'filled','LineWidth',2);
title('y_{g2}[n]');
xlabel('n'); ylabel('Value');

%计算y2的N、α
