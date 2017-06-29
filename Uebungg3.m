format long;

A = [0.780 0.563; 0.913 0.659]
b = [0.217; 0.254]

function x = getAbs((A / b) * x)
 %%% google
endfunction

function relFormel = getRel(A, x)
    relFormel =  (( norm(A, "fro") * norm(inv(A), "fro")) / ( 1 - kappa )) * (( norm(deltaA, "fro") / norm(A, "fro")) + ( norm(deltaB, "fro") / norm(b, "fro")));        
endfunction

function x = getDeltaX(A, b)
  x = (A .* (5*10^(-6)) \ b.* (5*10^(-6)))
endfunction

function x = getDelta(A)
  x = (A .* (5*10^(-6)))
endfunction

function x = getX(A, b)
  x = (A \ b)
endfunction

function kappa = kappa(A)
  kappa = cond(A)
endfunction

function rKappa = rKappa(A)
  rKappa = cond(A)
endfunction

