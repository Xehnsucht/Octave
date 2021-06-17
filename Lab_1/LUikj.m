function [L, U] = LUikj(A)
  [D,C]= lu(A);
  N=size(A)(1);
  %[x,y]=size(A);
  %if (x==y)
  N=size(A)(1);
  for i = 2:N
    for k = 1:(i-1)
      A(i,k) = A(i,k)/A(k,k);
      for j = (k+1):N
        A(i,j) = A(i,j)-A(i,k)*A(k,j);
       endfor
    endfor
  endfor
  L=tril(A)-diag(diag(A))+eye(N);
  U=triu(A);
%endif
  [D,C]= lu(A);
  E=L*U;
  R=D*C;
 endfunction