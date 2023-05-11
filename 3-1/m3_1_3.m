S_phir = 3829; Kp_phir=0.1417; Ki_phir=1;
PID_phir = S_phir * tf([Kp_phir Ki_phir],[1 0]);
plant_phir = tf(Lm, [Lr/Rr 1]);
loop_phir = feedback(series(PID_phir, plant_phir), 1);
BW_loop_phir = bandwidth(loop_phir)