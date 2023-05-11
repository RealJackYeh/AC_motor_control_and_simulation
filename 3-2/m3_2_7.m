Ts = 0.001;
wrm_PID = tf([0.1256 0.314],[1 0]);
digital_wrm_PID = c2d(wrm_PID, Ts)
