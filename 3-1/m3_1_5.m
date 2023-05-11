wc = 2*pi*10;
Ts = 0.00025;
LPF = tf([wc],[1 wc]);
HPF = tf([1 0], [1 wc]);
dLPF = c2d(LPF, Ts)
dHPF = c2d(HPF, Ts)
