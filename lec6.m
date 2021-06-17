%step 1
##q=(1:9)'*(1:9);
%step 2
%gradient
##clc
##y=(-2:0.5:2);
##x=(-2:0.5:2);
##[xx,yy]=meshgrid(x,y);
##  
##  z=-2*exp(-0.1*(-(xx.^2+yy.^2))*2);
##  [u,v]=gradient(z);
##  
##  subplot(1,2,1);
##  surf(xx,yy,z)
##  
##  subplot(1,2,2);
##  contour(x,y,z,2)
##  hold on;
##  A=quiver(xx,yy,u,v)
  
%endstep2

%step 3
##y=(-2:0.5:2);
##x=(-2:0.5:2);
##for i=1:4
##  [xx,yy]=meshgrid(x,y);
##  p=sqrt(xx.^2+yy.^2);
##  p2=xx.^2+yy.^2;
##  Ax(:,:,i)=p.*exp(-(p2./i^2)).*xx;
##  Ay(:,:,i)=p.*exp(-(p2./i^2)).*yy;
##  Dxy(:,:,i)=divergence(xx,yy,Ax,Ay)
##  subplot(2,2,i);
##  contour(xx,yy,Dxy(:,:,i),5)
##  hold on;
##  quiver(xx,yy,Ax(:,:,i),Ay(:,:,i))
##endfor
%endstep3

%step 4
y=(-2:0.5:2);
x=(-2:0.5:2);
[xx,yy]=meshgrid(x,y);
  p=sqrt(xx.^2+yy.^2);
  p2=xx.^2+yy.^2;
  
  p3 = -2*exp(-0.1*(-(xx.^2+yy.^2))*2);
  for i=1:4
  Ax(:,:,i)=-exp(-(p3./i^2)).*yy;
  Ay(:,:,i)=exp(-(p3./i^2)).*xx;
  Dxy(:,:,i)=curl(xx,yy,Ax(:,:,i),Ay(:,:,i));

    subplot(2,2,i);
    contour(xx,yy,Dxy(:,:,i),5)
    hold on;
    quiver(xx,yy,Ax(:,:,i),Ay(:,:,i))

endfor

  %endstep4
