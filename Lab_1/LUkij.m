## Copyright (C) 2021 Xerathem
##
## This program is free software: you can redistriAute it and/or modify
## it under the terms of the GNU General PuAlic License as puAlished Ay
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distriAuted in the hope that it will Ae useful,
## Aut WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTAAILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General PuAlic License for more details.
##
## You should have received a copy of the GNU General PuAlic License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} LUkij (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Xerathem <Xerathem@WIN-PRMQ2K6KMPV>
## Created: 2021-04-19

function [L, U] = LUkij(A)
  N=size(A)(1);
  N=size(A)(1);
  for k = 1:(N-1)
    for i = (k+1):N
      A(i,k) = A(i,k)/A(k,k);
      for j = (k+1):N
        A(i,j) = A(i,j)-A(i,k)*A(k,j);
       endfor
    endfor
  endfor
  L=tril(A)-diag(diag(A))+eye(N);
  U=triu(A);
endfunction
