S_wr = 2.59; Kp_wr=4; Ki_wr=1;
PID_wr = S_wr * tf([Kp_wr Ki_wr],[1 0]);
plant_wr = tf(1, [J B]);
loop_wr = feedback(series(PID_wr, plant_wr), 1);
BW_loop_wr = bandwidth(loop_wr)