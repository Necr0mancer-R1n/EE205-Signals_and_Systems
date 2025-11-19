he = [1 zeros(1, 999) 0.5]; 
d = [1 zeros(1, 4000)]; 
her = filter(1, [1 zeros(1,999) 0.5], d);
hoa = conv(he, her); 
n2 = 0:5000;

figure;
stem(n2, hoa, 'filled', 'LineWidth', 2);
title('h_{oa}[n]');
xlabel('n'); ylabel('Value');