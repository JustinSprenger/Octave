#format long
#delta = 5* 10^-6
#A=[ 0.780, 0.563; 0.913, 0.659 ]
#b=[ 0.217; 0.254]


#x = A\b

#adelta = A*delta
#bdelta = b*delta

#kappa = norm(adelta,"fro") * norm(inv(A),"fro")

#rel= (
#      ( (norm(A,"fro")*norm(inv(A),"fro") )
#      /
#      (1-kappa)
#    *
#      ( norm(adelta,"fro") )
#      /
#      ( norm(A,"fro") )
#     +
#      ( norm(bdelta,"fro") )
#      /
#      ( norm(b,"fro") )
# )
#)

#xdelta = adelta\bdelta

#abs = rel * xdelta

A=[]
b=[]

function abweichung(A , b)
  format long
  delta = 5* 10^-6

  x = A\b

  adelta = A*delta
  bdelta = b*delta

  kappa = norm(adelta,"fro") * norm(inv(A),"fro")

  rel= (
      ( (norm(A,"fro")*norm(inv(A),"fro") )
      /
      (1-kappa)
    *
      ( norm(adelta,"fro") )
      /
      ( norm(A,"fro") )
     +
      ( norm(bdelta,"fro") )
      /
      ( norm(b,"fro") )
    )
  )

  xdelta = adelta\bdelta

  abs = rel * xdelta

  intervall = [ (x-abs), (x+abs) ]

endfunction

#Aufgabe A
A=[ 2, 3, -1; 2, 1, -1; -4, 2, 1 ]
b=[ 0; 2; -9]

abweichung(A , b)

#Aufgabe B 
A=[ 1, 1, 0, 3;
    2, 1,-1, 1;
    3,-1,-1, 2;
   -1, 2, 3,-1 ]
b=[ 4; 1; -3; 4]

abweichung(A , b)

#Aufgabe C
A=[ 0, 3,-5, 1;
   -1,-3, 0,-1;
   -2, 1, 2, 2;
   -3, 4, 2, 2 ]
b=[ 0;-5; 2; 8]

abweichung(A , b)

#Aufgabe D
A=[ 5,-3, 0, 2;
    2, 6,-3, 0;
   -1, 2, 4,-1;
   -2,-3, 2, 7 ]
b=[ 13;16; -11; 10]

abweichung(A , b)
