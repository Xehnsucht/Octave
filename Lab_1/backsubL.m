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
## @deftypefn {} {@var{retval} =} backsubL (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Xerathem <Xerathem@WIN-PRMQ2K6KMPV>
## Created: 2021-04-19

function Y = backsubL(A, B)
   #input A = l, B = x;
 n = length(B);
 Y = zeros(n, 1);
 Y(1) = B(1);
 for  k = 2:n 
   Y(k) = (B(k)-A(k,k-1:-1:1)*Y(k-1:-1:1,1));
 endfor
endfunction
