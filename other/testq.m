
qhk = [0.773915000000000;-0.0653040000000000;0.118181000000000;0.618728000000000];

% qGround = [1.55296500789410;-0.110841963028943;0.227406223579617;1.23442047977998];

qZK = [-0.786419707941172;0.0416213713801596;-0.107837828316119;-0.606780608779213];


qYk = [0.999490131751699;-0.0262780322674373;-0.00765178716454715;0.0164435915879782];

[pitchH rollH yawH] = quat2angle(qhk', 'YXZ')
[pitchH rollH yawH] * 180/pi


% [pitchZ rollZ yawZ] = quat2angle(qGround', 'YXZ');
% [pitchZ rollZ yawZ] * 180/pi

[pitchZW rollZW yawZW] = quat2angle(qZK', 'YXZ');
[pitchZW rollZW yawZW] * 180/pi

[pitchZW rollZW yawZW] = quat2angle(qYk', 'YXZ');
[pitchZW rollZW yawZW] * 180/pi

% qnew = angle2quat( pitchZ, rollZ, yawZ, 'YXZ' )