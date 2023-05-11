S_iq = 604134; Kp_iq=0.0104; Ki_iq=1;
PID_iq = S_iq * tf([Kp_iq Ki_iq],[1 0]);
plant_iq = tf(1, [1 Rs/Lq]);
loop_iq = feedback(series(PID_iq, plant_iq), 1);
bandwidth(loop_iq)
