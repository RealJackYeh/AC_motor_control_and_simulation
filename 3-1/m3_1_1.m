S_id = 30000/Lsigma; Kp_id=0.0043; Ki_id=1;
PID_id = S_id * tf([Kp_id Ki_id],[1 0]);
plant_id = tf(Lsigma, [1  (Rs/Lsigma+(1-sigma)/(sigma*Tr))]);
loop_id = feedback(series(PID_id, plant_id), 1);
BW_loop_id = bandwidth(loop_id)