S_wr = 0.01; Kp_wr=0.34; Ki_wr=1;
PID_wr = S_wr * tf([Kp_wr Ki_wr],[1 0]);
plant_wr = tf(1, [J B]);
loop_wr = feedback(series(PID_wr, plant_wr), 1);
BW_loop_wr = bandwidth(loop_wr)
