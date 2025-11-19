x1 = [1, 1, 1, 1, 1]; 
h1 = [1, -1, 3, 0, 1];

n = 0:4;
w = (n+1).*x1;
nw = 0:4;
nh1 = 0:4;

yf1 = conv(w,h1);
nyf1 = nw(1)+nh1(1):nw(end)+nh1(end);

n = 0:4;
hf1 = [1,0,0,0,0];
nhf1 = 0:4;

hseries = conv(hf1,h1);
nhseries = nh1(1)+nhf1(1):nh1(end)+nhf1(end);

yf2 = conv(x1,hseries);
nyf2 = n(1)+nhseries(1):n(end)+nhseries(end);

%绘制图片
figure;
subplot(2,1,1);
stem(nyf1,yf1,'b','filled','LineWidth',2);
xlabel('n');
ylabel('Value');
xlim([0 max([nyf1,nyf2])]);
title('y_{f1}[n]');
subplot(2,1,2);
stem(nyf2,yf2,'r','filled','LineWidth',2);
xlabel('n');
ylabel('Value');
xlim([0 max([nyf1,nyf2])]);
title('y_{f2}[n]');