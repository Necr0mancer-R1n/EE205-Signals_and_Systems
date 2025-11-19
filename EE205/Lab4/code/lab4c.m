Y = fftshift(tau*fft(y));
figure
plot(t,abs(Y))
title('Y 的幅值图')
ylabel('abs(Y)')
xlabel('ω')
