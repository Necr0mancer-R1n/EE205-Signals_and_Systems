%a
a1 = [1,-0.8];
a2 = [1,0.8];
b1 = [1];
b2 = [1];

%b
w = linspace(2,2*pi,2024);
[H1,w]=freqz(b1,a1,1024,'whole');
[H2,w]=freqz(b2,a2,1024,'whole')

figure;grid on;
subplot(2,1,1),plot(w,abs(H1));
title('System1');xlabel('\omega1');ylabel('|H1(e^{j\omega})|');
subplot(2,1,2),plot(w,abs(H2));
title('System2');xlabel('\omega2');ylabel('|H2(e^{j\omega})|');

%c
N = 20;
a_x = zeros(1,N);
a_x(2) = 3/4; 
a_x(end) = 3/4;
a_x(10) = -1/2; 
a_x(12) = -1/2; 

wk = (2*pi/N) * (0:N-1);

figure;
stem(wk, a_x,'filled','LineWidth',2);
title('DTFS Coefficients of x[n]');xlabel('w_k');ylabel('a_x');

%d
x_20 = real(ifft(a_x) * N);
n1 = -20:99;
xn = x_20(mod(n1, N) + 1);

figure;
subplot(2,1,1);
stem(0:19,x_20,'r','filled');
title('x20[n]');xlabel('n');ylabel('Value');
subplot(2,1,2);
stem(n1, xn,'filled');
title('x[n]');xlabel('n');ylabel('Value');

%e
n=0:99;
x = x_20(mod(n, N) + 1);
y1=filter(b1,a1,x);
y2=filter(b2,a2,x);

figure;
subplot(2,1,1);
stem(n,y1,'filled');xlabel('n');ylabel('y1[n]');
subplot(2,1,2);
stem(n,y2,'r','filled');xlabel('n');ylabel('y2[n]');

%f
y1_20 = y1(1:20); 
y2_20 = y2(1:20);
a_y1 = fft(y1_20) / N; 
a_y2 = fft(y2_20) / N;

figure;
subplot(2,1,1);stem(wk,abs(a_y1),'filled');
xlabel('wk');ylabel('Value');title('a_y1');
subplot(2,1,2);
stem(wk,abs(a_y2),'r','filled');
xlabel('wk');ylabel('Value');title('a_y2');