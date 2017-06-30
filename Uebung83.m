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

