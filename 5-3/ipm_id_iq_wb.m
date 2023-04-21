Ld = 27e-3;
Lq = 67e-3;
Lamda_f = 0.272;
Ismax = 6;
Vsmax = 300/sqrt(3);
ids1 = (Lamda_f - sqrt(Lamda_f^2 + 8*(Lq-Ld)^2*Ismax^2))/(4*(Lq-Ld))
iqs1 = sqrt(Ismax^2 - ids1^2)
wb_IPM = Vsmax/sqrt((Ld*ids1+Lamda_f)^2 + (Lq*iqs1)^2)