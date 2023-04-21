Ts = 0.0001;
iq_PID = tf([3120 300000],[1 0]);
digital_iq_PID = c2d(iq_PID, Ts)
