
disp('Aufgabe 1)')
clear;
clc;
x = 0;
t = 20;
m = 5;
n = 5;

for i = 0:5
  x=i;
  erg = hygepdf(x,t,m,n);
  a(1,i+1) = erg;
  disp(erg)
  i = i + 1;
endfor
bar(a)


disp('Aufgabe 2)')
ergebnis= zeros(1,36)
for a = 1:6
  for b = 1:6
    for c = 1:6
      for d = 1:6
        for e = 1:6
          for f = 1:6
            
            v = a + b + c + d + e + f;
            erge(1,f) = v;
            ergebnis(1,6+b+c+d+e+f) += a+b+c+d+e+f;
          endfor
          ergebnis(1,6+b+c+d+e) += a+b+c+d+e;
        endfor
        ergebnis(1,6+b+c+d) += a+b+c+d;   
      endfor
      ergebnis(1,6+b+c) += a+b+c;
    endfor
    ergebnis(1,6+b) += a+b;
  endfor
  ergebnis(1,6) += a;
endfor
%bar(ergebnis);
ergebnis
a=[1, 2, 3]
b=[1, 2, 3]

ndgrid(a,b)

disp('Aufgabe 3)')

p=0.02
n=[250, 500, 1000, 2000]
erw = p*n
sig = sqrt(n * p * (1 - p))


disp('Aufgabe 4')

p=1/3
k=[0, 1, 2, 3, 4, 5]
erg = binopdf(k, 5, p)
%bar(erg)
