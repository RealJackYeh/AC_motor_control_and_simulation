
t = 0:0.01:1;
va = 10*sin(2*pi*50*t);
vb = 10*sin(2*pi*50*t-2*pi/3);
vc = 10*sin(2*pi*50*t-4*pi/3);
plot(t, va);
hold on
plot(t, vb);
hold on
plot(t, vc);