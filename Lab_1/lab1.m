clc;clear;
1

for i=50:50:450
  for j = 1:1:9
  A=rand(i);
  tic();
  [x,y]=size(A);
    if (x==y)
    [l1,u1]=LUijk(A);
    t1(j)=toc();
    [l2,u2]=LUkij(A);
    t2(j)=toc();
    [l3,u3]=LUkji(A);
    t3(j)=toc();
    [l4,u4]=LUikj(A);
    t4(j)=toc();
    endif
  endfor
endfor


%Test SLAY

E=[1.83, 4.34, -7.49,11.07;
   -2.15, 4.94, -3.89,6.48;
   -0.50, 1.94, -3.32,4.33;
   -4.27, 8.45,-7.71,12.30
   ];
B=[1;2;3;4];


%X=[x1;x2;x3;x4]
[l,u]=LUijk(E);
%LU * X = B
%U * X = Y
Y=backsubL(l,B);
%X = Y/U
%x = Y/U;
X=backsubU(u,Y)
%Y = L/B