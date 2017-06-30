clc;
clear;
disp("Aufgabe1: ")

disp("Nennerpolynom:  ")

#Zeaehlerpolynom
zp = [4 0 0 0 -4];

#Leitfaktoren des Nenners
np1 = [1 -2];
np2 = [1 +2];

%np1 = x -2;
%np2 = x +2;

#Multiplikation der Leitfaktoren zur Bestimmung des Nenners
np = conv(np1,np2)


disp("Nullstellen des Zählerpolynoms: ")
erg = roots(zp)

disp("Patialbruchzerlegung: ")
[r, xP, g] = residue(zp,np)


disp("Aufgabe2: ")

disp("Patialbruchzerlegung a) : ")
za = [2];
na = [1 0 -1];

[ra, xPa, ga] = residue(za,na)


disp("Patialbruchzerlegung b) : ")
zb = [2 3];
nb = [1 3 2];

[rb, xPb, gb] = residue(zb,nb)


disp("Patialbruchzerlegung c) : ")
zc = [1 1 1 2];
nc = [1 3 0 2];

[rc, xPc, gc] = residue(zc,nc)


disp("Patialbruchzerlegung d) : ")
zd = [2 -14 14 30];
nd = [1 0 -4];
#Umwandlung einer unecht gebrochenen Funktion in eine echt gebrochene Funktion
[rr1,rr2] = deconv(zd,nd);

rr2
[rf, xPf, gf] = residue(rr2(3),rr2(4))




display('Aufgabe 3')

display('a)')
#Polynom mit komplexen Koeffizienten
k = [1 0 0 0 0 0 0 -1];
#Berechnung komplexer Nullstellen
kn = roots(k);
#graphische Darstellung in der komplexen Ebene
figure(1),compass(kn)

display('b)')
k = [1 1 1 1 1 1];
kn = roots(k);
figure(2),compass(kn)

display('c)')
k = [1 0 0 -j];
kn = roots(k);
figure(3),compass(kn)





