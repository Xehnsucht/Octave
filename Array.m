## -*- texinfo -*-
## "Independent work"
## Author: 
% 1-D array
disp("###########")
disp("1-D array")
disp("###########")
[1:9]

A=[1:9]

M=reshape(A,[3,3])
M(2,3)

M([1:2],2) %M([1 2],2)

%M(:,3)

sum(M) 

mod(sum(M,1),4)

mod(sum(M,1),4) == 0

find(ans)

M(: , mod(sum(M,1),4) == 0)

% 2-D array
disp("###########")
disp("2-D array")
disp("###########")

M(5,:) = 5

M(:,4:5) = 8 

M(:,3) = [] 

M(3:4,:) = []

M(1)

M(1:4)

M(12)=M(12)+10 % или M(end)=M(end)+10

M(:)

%More-D array
disp("###########")
disp("3-D array")
disp("###########")
M=reshape(1:12,[2,2,3]) 
disp(M)
n = 0
 for k=1:size(M,3)
   n=n+1
    for j=1:size(M,2)
      for i=1:size(M,1)
        M(i,j,k)= M(i,j,k) + n;
      endfor
    endfor
  endfor
disp(M)


clc
disp("###########")
disp("Independent work")

disp("Task 1")
disp("###########")
C = reshape (13:1:48, [3,3,4])

disp("Task 2")
disp("###########")
C (:,:,3) =[]
disp("Task 3")
disp("###########")
All_sum = sum(C,2);
Sum_Page_2 = All_sum(:,:,2);
disp (Sum_Page_2)
disp("Task 4")
disp("###########")
Finder_2 = mod(Sum_Page_2,2) == 0 
disp("Task 5")
disp("###########")
C (Finder_2,:,:) = []
A = C;

disp("Task 6")
disp("###########")
n = 10;
# k = 1 
 # j = 1
  # i = 1 
 for k=1:size(C,3)
   
    for j=1:size(C,2)
      for i=1:size(C,1)
        C(i,j,k) = C(i,j,k) - n;
      endfor
    endfor
    n += 2;
  endfor
disp(C)
disp("Task 7")
disp("###########")
A (:,:,1) -= 10
A (:,:,2) -= 12
A (:,:,3) -= 14 
