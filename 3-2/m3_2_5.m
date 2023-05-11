Ts = 0.0001;
id_PID = tf([6283 1308958],[1 0]);
digital_id_PID = c2d(id_PID, Ts)