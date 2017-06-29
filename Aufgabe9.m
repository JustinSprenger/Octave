
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






disp('Aufgabe 3)')






