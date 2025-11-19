d = [1 zeros(1, 4000)]; 
n0 = 0:4000;
her = filter(1, [1 zeros(1,999) 0.5], d);
stem(n0, her,"filled","LineWidth",2); 
xlabel("n");ylabel("Value");title('her[n]');