x1 = [1, 1, 1, 1, 1, 0, 0, 0, 0, 0]; 
h1 = [1, -1, 3, 0, 1]; 
h2 = [0, 2, 5, 4, -1]; 
w=conv(x1,h1);
yd1=conv(w,h2);
hs=conv(h1,h2);
yd2=conv(x1,hs);

nw = 0:length(w)-1; 
ny1= 0:length(yd1)-1; 
nh = 0:length(hs)-1; 
ny2 = 0:length(yd2)-1; 

figure;
subplot(2,1,1);
stem(ny1,yd1);
title('Signal,yd1[n]');
xlabel('n');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
stem(ny2,yd2);
title('Signal,yd2[n]');
xlabel('n');
ylabel('Amplitude');
grid on;
