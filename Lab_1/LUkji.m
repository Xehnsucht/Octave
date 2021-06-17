## Copyright (C) 2021 Xerathem
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} LUkji (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Xerathem <Xerathem@WIN-PRMA2K6KMPV>
## Created: 2021-04-19

function [L, U] = LUkji(A)
  [D,C]= lu(A);
  N=size(A)(1);
  for k=1:(N-1)
    for s=(k+1):N
      A(s,k)=A(s,k)/A(k,k);
    endfor
    for j = (k+1):N
      for i = (k+1):N
        A(i,j)=A(i,j)-A(i,k)*A(k,j);
      endfor
    endfor
  endfor
  L=tril(A)-diag(diag(A))+eye(N);
  U=triu(A);
  E=L*U;
  R=D*C;
endfunction
