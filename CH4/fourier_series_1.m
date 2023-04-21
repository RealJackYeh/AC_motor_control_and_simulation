Ts = 0.01;
T = 2;
t = 0:Ts:T-Ts
f(t < T/2) = 2;
f((t>=T/2) & (t<T)) = -2
plot(t, f)
N=1;
a = zeros(1, N+1);
b = zeros(1, N+1);
for n=0:N 
    a(n+1) = (2*Ts/T)*sum(f.*cos(2*pi*n*t/T));
    b(n+1) = (2*Ts/T)*sum(f.*sin(2*pi*n*t/T));
end
stem(0:N, a)
hold on
stem(0:N, b)
hold off
legend('a', 'b')

t=-2*T:Ts:2*T;
fs = (a(1)/2) * ones(size(t));
for n=1:N
    fs = fs + (a(n+1)*cos(2*pi*n*t/T) + b(n+1)*sin(2*pi*n*t/T));
end
plot(t, fs)

