
xn3 = 0:31;
idx2 = [31 32 1 2 3];     
idx8 = [25:32 1:9];        
idx12 = [21:32 1:13];  
idx_all = [18:32 1:17];    

x3_2 = zeros(1,32); x3_8 = zeros(1,32); 
x3_12 = zeros(1,32); x3_all = zeros(1,32);


for p = 1:32
    n = p-1;  
   
    x3_2(p) = sum(a3(idx2).*exp(1i*(-2:2)*2*pi/32*n));
   
    x3_8(p) = sum(a3(idx8).*exp(1i*(-8:8)*2*pi/32*n));
    
    x3_12(p) = sum(a3(idx12).*exp(1i*(-12:12)*2*pi/32*n));
    
    x3_all(p) = sum(a3(idx_all).*exp(1i*(-15:16)*2*pi/32*n));
end

figure;
subplot(4,1,1);
stem(xn3,real(x3_2),'filled','LineStyle','--','Color',[239,19,67]/255)
xlabel('n'); ylabel('x3_2[n]'); title('k=-2:2合成');

subplot(4,1,2);
stem(xn3,real(x3_8),'filled','LineStyle','--','Color',[89,19,67]/255)
xlabel('n'); ylabel('x3_8[n]'); title('k=-8:8合成');

subplot(4,1,3);
stem(xn3,real(x3_12),'filled','LineStyle','--','Color',[239,0,67]/255)
xlabel('n'); ylabel('x3_12[n]'); title('k=-12:12合成');

subplot(4,1,4);
stem(xn3,real(x3_all),'filled','LineStyle','--','Color',[239,19,138]/255)
xlabel('n'); ylabel('x3_all[n]'); title('全系数合成');