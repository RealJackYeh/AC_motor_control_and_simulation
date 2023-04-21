Ts = 0.001;
integrator = tf([1],[1 0]);
digital_integrator = c2d(integrator, Ts)