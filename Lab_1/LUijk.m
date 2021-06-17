function [L, U] = LUijk(A)
 N=size(A)(1);
  for i=2:N
    for j=2:i
      A(i,j-1)=A(i,j-1)/A(j-1,j-1);
      for k=1:(j-1)
        A(i,j)=A(i,j)-A(i,k)*A(k,j);
      endfor
    endfor
    for j=(i+1):N
      for k=1:(i-1)
        A(i,j)=A(i,j)-A(i,k)*A(k,j);
      endfor
    endfor
  endfor
  L=tril(A)-diag(diag(A))+eye(N);
  U=triu(A);
endfunction