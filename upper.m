#backward
function y = upper(U,b)
  n = length(b);
  y(n,1) = b(n)/U(n,n);
  for i=n-1:-1:1
    y(i,1) = (b(i) - U(i,i+1:n)*y(i+1:n,1))/U(i,i);
  end
endfunction

#cara cari matriks A dengan PA = LU
# Diketahui Ax=b dengan PA =LU
# PAx = Pb
# LUx = Pb , substitusi Ux dengan y
# Ly = Pb