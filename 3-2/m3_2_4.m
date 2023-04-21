Ts = 0.0001;
id_PID = tf([240 50000],[1 0]);
digital_id_PID = c2d(id_PID, Ts)
