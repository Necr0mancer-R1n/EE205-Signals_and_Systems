load lineup.mat; 

Ryy = conv(y, flipud(y)); 
Ryy2 = conv(y2, flipud(y2));
Ryy3 = conv(y3, flipud(y3));
n = -6999: 6999;

plot(n, Ryy);
title('R_{yy}[n]');
xlabel('n'); ylabel('Value');

plot(n,Ryy2);
title('R_{yy2}[n]');
xlabel('n');ylabel("Value");

plot(n,Ryy3);
title('R_{yy3}[n]');
xlabel("n");ylabel("Value");

set(gcf, 'Position', [100 100 800 800]);