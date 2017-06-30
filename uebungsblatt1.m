a=[2;-3;4];
b=[3;5;-1];
c=[3;0;7];
a(3),b(2),c(1)
d=2*a-3*b+c
a==b
ra=sqrt(a(1)^2 + a(2)^2 + a(3)^2)
rb=norm(b)
rc = norm(c)
norm(d) <= 2*ra + 3*rb + rc
ea = a / ra
eb = b / rb
ec = c / rc



cal = a(1)/ra, cbe = a(2)/ra, cga = a(3)/ra
cal = ea(1),cbe = ea(2),cga=ea(3)
koef = 180/pi
alfa = koef*acos(cal),beta = koef*acos(cbe),gamma = koef*acos(cga)


skab = a(1)*b(1) + a(2)*b(2) + a(3)*b(3)
skac = dot(a,b)
skbc = dot(b,c)
phi = koef*acos(skab/(ra*rb))

n = [0 0 0]'
n(1) = a(2)*b(3) - a(3)*b(2);
n(2) = a(3)*b(1) - a(1)*b(3);
n(3) = a(1)*b(2) - a(2)*b(1);
crab = n
Crab = cross(a,b)
