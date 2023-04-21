Ts = 5e-5;
T = 0.5;
t = out.van.time';
f =  out.van.signals.values';
subplot(3,1,1);
plot(t, f)
N=1;
a = zeros(1, N+1);
b = zeros(1, N+1);
for n=1:N 
    a(n+1) = (2/T)*sum(f.*cos(2*pi*n*t/T)*Ts);
    b(n+1) = (2/T)*sum(f.*sin(2*pi*n*t/T)*Ts);
end
subplot(3,1,2);
stem(0:N, a)
hold on
stem(0:N, b)
hold off
legend('a', 'b')

t=0:Ts:T;
fs = (a(1)/2) * ones(size(t));
for n=25:N     
    fs1 = (a(n+1)*cos(2*pi*n*t/T) + b(n+1)*sin(2*pi*n*t/T));
    fs2 = b(n+1)*sin(2*pi*n*t/T);    
end
fs1 = a(26)*cos(2*pi*n*t/T) + b(26)*sin(2*pi*n*t/T);
subplot(3,1,3);
plot(t, fs1)  % 成功畫出前50階諧波累積波形結果


% fs = 1/Ts;
% % fftSignal = fft(f);
% % fftSignal = fftshift(fftSignal);
% % f1 = fs/2*linspace(-1,1,Ts);
% figure;
% plot(abs(fft(f)));
% title('magnitude FFT of sine');
% xlabel('Frequency (Hz)');
% ylabel('magnitude');
% % [p,f1] = pspectrum(f);
% % plot(f1,abs(p))

