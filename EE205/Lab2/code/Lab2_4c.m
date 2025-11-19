x1 = [1, 1, 1, 1, 1, 0, 0, 0, 0, 0]; 
h1 = [1, -1, 3, 0, 1]; 
h2 = [0, 2, 5, 4, -1]; 
t1=h1+h2;
y1=conv(x1,t1);
y2=conv(x1,h1);
y3=conv(x1,h2);
y4=y2+y3;

nx = 0:length(y1)-1; 
nh = 0:length(y2)-1; 
ny = 0:length(y3)-1; 

figure;
subplot(2,1,1);
stem(nx,y1);
title('Signal,y1[n]=x[n] * (h1 [n] + h2[n])');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(nh,y4);
title('Signal,y4[n]= x[n] * h1[n] + x[n] * h2[n]');
xlabel('n');
ylabel('Amplitude');
grid on;