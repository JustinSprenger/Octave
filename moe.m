clear;
clc;
warning("off");

# Funktion zur Berechnung der Anzahl von moeglichen Kombinationen 
# einer Augensumme mit den Parametern: Augensumme fuer die gesuchte
# Kombinationsanzahl und Anzahl der Wuerfel zur Bestimmung der Kombinationen


function moe(augensumme , anzahlWuerfel)
 y=0;
 z = floor((augensumme-anzahlWuerfel)/6);
 for i = [0:z]
   y += (-1)^i * nchoosek(anzahlWuerfel,i) * nchoosek((augensumme-1-(6*i)),anzahlWuerfel-1);
 endfor
 y = y/(6^anzahlWuerfel);
endfunction

#1. Wuerfel
for i = [1:6]
  vektor1(1,i) = moe(i,1);
endfor

 figure(1);
 graphEins = bar(vektor1);
 title ("Wuerfel 1");


#2. Wuerfel
for i = [1:12]
  vektor2(1,i) = moe(i,2);
endfor

 figure(2);
 graphZwei = bar(vektor2);
 title ("Wuerfel 2");

 
#3. Wuerfel
for i = [1:18]
  vektor3(1,i) = moe(i,3);
endfor

 figure(3);
 graphDrei = bar(vektor3);
 title ("Wuerfel 3");
 
 
#4. Wuerfel
for i = [1:24]
  vektor4(1,i) = moe(i,4);
endfor

 figure(4);
 graphVier = bar(vektor4);
 title ("Wuerfel 4");

#5. Wuerfel
for i = [1:30]
  vektor5(1,i) = moe(i,5);
endfor

 figure(5);
 graphFuenf = bar(vektor5);
 title ("Wuerfel 5");

 
#6. Wuerfel
for i = [1:36]
  vektor6(1,i) = moe(i,6);
endfor

 figure(6);
 graphSechs = bar(vektor6);
 title ("Wuerfel 6");