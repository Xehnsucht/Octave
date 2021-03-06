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
## @deftypefn {} {@var{retval} =} backsubU (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Xerathem <Xerathem@WIN-PRMQ2K6KMPV>
## Created: 2021-04-19

function X = backsubU(A, B)
  #input A = u, B = y;
 n = length(B);
 X = zeros(n, 1);
 X(n) = B(n)/A(n,n);
 for  k = n-1:-1:1 
   X(k) = (B(k)-(A(k,k+1:n))*X(k+1:n))/A(k,k);
 endfor
endfunction
