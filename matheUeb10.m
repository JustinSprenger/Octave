clear;
clc;
format long;

disp("Aufgabe 1 a)")
 
 fun = @(x)(9 - x)^2;
 q = quad(fun,0,9)
 C = 1/q
 f = @(x) C *(9 - x)^2

 disp("Aufgabe 1 b)")
 F = @(x) C *(x(x^2-27*x + 243))/3 
 
 
 disp("Aufgabe 1 c)")
 x =[0:9];
 
 subplot(1,2,1), plot(x, normpdf(x)),title(" Dichtefunktion ")
 subplot(1,2,2), plot(x, normcdf(x)),title(" Verteilungsfunktion ")
 
 disp("Aufgabe 1 d) ")
 erwartung = @(x)x*C*(9 - x)^2;
 erwartungswert = quad(erwartung,0,9)
 abweichung = quad(@(x) ((x-erwartungswert)^2)*C*(9-x)^2,0,9)# vielleicht fehlerhaft
 
 disp("Aufgabe 1 e) ")#folgefehler moeglich
 RechErwartung = 30 + 80 * erwartungswert
 RechAbweichung = 80* abweichung
 
 disp("Aufgabe 2 ")
 #disp(" poisson pdf , dann cdf um mittelwert zu berehnen(7/2 = 3.5)")
 #A
 x=[0:1:8];
 mit = 3.5;
 
 figure(2),bar(x,poisspdf(x,mit))
 #B
 einsaetze = 1 - poisscdf(2,mit)
 #C
 dichte = poisscdf(x,2);
 verteilung = poisspdf(x,2);
 
 figure(3),bar(x,dichte)
 figure(4),bar(x,verteilung)
 #D
 inzwei = poisscdf(2,2)#alex fragen
 #E
 minfuenf = 1 - poisscdf(4,2)#alex fragen
 
 
 
 disp("Aufgabe 3 ")
  
 gamma = 0.95;
 wahrschinlichkeit = 1.96;   % laut sigma tabelle
 sig2 = 4;                    % Varianz
 sig  = sqrt(sig2);           % Standardabweichung
 v = [10 8 9 10 11 11 9 12 8 12];     % Schraubenlaengen
 mittelwert = mean(v);
 
 linkeGrenze = mittelwert - ((wahrschinlichkeit * sig)/ sqrt(10))
 rechteGrenze = mittelwert + ((wahrschinlichkeit * sig)/ sqrt(10))
 
 disp("Aufgabe 4")
 
 leuhtet = 10000; % in Stunden
 standardabweichung = 800; % in Stunden
 
 disp("Aufgabe 4 a) ")
 vierA = normcdf(9000 ,10000 , 800)
 
 disp("Aufgabe 4 b) ")
 vierB = normcdf(10500, 10000, 800) - vierA
 
 disp("Aufgabe 4 c) ")
 vierC = norminv(0.8,leuhtet,standardabweichung)
 
 disp("Aufgabe 4 d) ")
 vierD = norminv(0.1,leuhtet,standardabweichung)
 
 disp("Aufgabe 4 e) ")
 fun = 1 - normcdf(9000, 10000, 800);  
 bedingteVierE = 1 - normcdf(10500,10000,800);
 vierE =  bedingteVierE / fun
 
 disp("Aufgabe 5")
 mittel = 40000             % in km
 standardabweichung = 4310  % in km
 
 disp("Aufgabe 5 a)")
 fuenfA = normcdf(37500, mittel, standardabweichung)
 
 disp("Aufgabe 5 b)")
 fuenfB = 1 - normcdf(45000, mittel, standardabweichung)
 
 disp("Aufgabe 5 c)")
 fun = 1 - normcdf(42000, mittel, standardabweichung);
 fuenfC = binopdf(4,4,fun)
 
 disp("Aufgabe 5 d)")#?(ist anders)
 mue=40000;
sigma=4310;
 
 aquer = ((1-normcdf(38000,mue,sigma))^4);
 a=1-aquer
 
 disp("Aufgabe 5 e) ")
 fuenfE = norminv(0.2,  mittel, standardabweichung)
 