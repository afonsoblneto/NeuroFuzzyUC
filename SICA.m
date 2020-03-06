num=[3 3]
den=[1 3 4 2]
[zz, pp, kk] = tf2zp(num, den) % to find zeros, poles and gains
maxPP = max(abs(real(pp)))
aux = (1/maxPP)*0.25
[numd, dend] = c2dm(num,den,aux,'zoh') % apply the discretization method 'zoh'

% num = [0 0.0791 0.0053 -0.0521]
% den = [1.0000 -2.2880 1.7819 -0.4724]
