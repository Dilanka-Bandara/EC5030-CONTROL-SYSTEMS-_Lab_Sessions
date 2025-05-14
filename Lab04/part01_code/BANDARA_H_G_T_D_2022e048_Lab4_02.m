% 2022e048
% BANDARA H.G.T.D.
% RC network

R = 52e3;       % 52 kΩ
C1 = 560e-12;   % 560 pF
C2 = 6e-12;     % 6 pF

num = [R*C1 0];                          % sRC1
den = [R*(C1 + C2), 1];                  % sR(C1 + C2) + 1

sys = tf(num, den)

step(sys);
title('Step Response of Corrected RC Network');
