S_id = 1308958; Kp_id=0.0048; Ki_id=1;
PID_id = S_id * tf([Kp_id Ki_id],[1 0]);
plant_id = tf(1, [1  Rs/Ld]);
loop_id = feedback(series(PID_id, plant_id), 1);
bandwidth(loop_id)
