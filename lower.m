#forward
function x = lower(L,b)
  [n n] = size(L);
  x = zeros(n,1);
  x(1) = b(1)/L(1,1);
  for i=2:n
    x(i) = (b(i) - L(i,1:i)*x(1:i))/L(i,i);
  endfor
endfunction



