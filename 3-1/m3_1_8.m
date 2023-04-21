Ts = 0.001;
phir_PID = tf([28.34 200],[1 0]);
digital_phir_PID = c2d(phir_PID, Ts)