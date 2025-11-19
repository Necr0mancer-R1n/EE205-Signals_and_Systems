he = zeros(1, 1001); 
he(1) = 1;          % n=0
he(1001) = 0.5;     % n=1000, α=0.5
nhe = 0:1000;
stem(nhe, he, 'filled', 'LineWidth', 2);
xlabel("n");ylabel("Value");title("he[n]");