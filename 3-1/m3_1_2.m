S_iq = 424324; Kp_iq=0.0074; Ki_iq=1;
PID_iq = S_iq * tf([Kp_iq Ki_iq],[1 0]);
plant_iq = tf(1, [1 Rs/Lsigma]);
loop_iq = feedback(series(PID_iq, plant_iq), 1);
BW_loop_iq = bandwidth(loop_iq)