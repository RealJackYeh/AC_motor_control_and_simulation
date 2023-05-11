Ts = 0.001;
wrm_PID = tf([10.36 2.59],[1 0]);
digital_wrm_PID = c2d(wrm_PID, Ts)