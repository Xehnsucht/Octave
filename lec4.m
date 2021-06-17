clc
[1:1:9];
ans';
C=ans.*ans'
C([1,2],[1,3]);
sum(C);
sum(C(:,3));
A=[1:1:10];
A=reshape(1:144,[12,12]);
A(:, mod(sum(A,1),4) == 0) = 0
[m n]=size(A);
A
A(end)+=1
%clc
%Z=reshape(1:12,[2,2,3])
%Z(2,:,:)=[]
%[m n b]=size(Z)
%for i=1:1:b
%  Z(:,:,i)+=i;
%endfor
%Z
