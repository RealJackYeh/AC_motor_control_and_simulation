Ts = 0.01;
T = 2;
Vdc=100;
t = 0:Ts:T-Ts;
f(t < T/2) = Vdc;
f((t>=T/2) & (t<T)) = -Vdc;
plot(t, f)
N=11;
a = zeros(1, N+1);
b = zeros(1, N+1);
for n=0:N 
    a(n+1) = (2*Ts/T)*sum(f.*cos(2*pi*n*t/T));
    b(n+1) = (2*Ts/T)*sum(f.*sin(2*pi*n*t/T));
end
t=-2*T:Ts:2*T;
fs = (a(1)/2) * ones(size(t));
for n=11:11
    fs = fs + (a(n+1)*cos(2*pi*n*t/T) + b(n+1)*sin(2*pi*n*t/T));
end
plot(t, fs)
grid on

% subplot(2,1,1);
% stem(0:N, a)
% subplot(2,1,2);
% stem(0:N, b)

% 
% t=-2*T:Ts:2*T;
% fs = (a(1)/2) * ones(size(t));
% for n=1:N
%     fs = fs + (a(n+1)*cos(2*pi*n*t/T) + b(n+1)*sin(2*pi*n*t/T));
% end
% plot(t, fs)

