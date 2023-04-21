Ts = 0.001;
wrm_PID = tf([4*0.3 0.3],[1 0]);
digital_wrm_PID = c2d(wrm_PID, Ts)