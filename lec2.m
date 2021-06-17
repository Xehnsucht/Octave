%--1--task
%clc;
%m=13;
%test(m);

# Plan
# lec ocatave 
# Pratike 
# Homework
# labs
# Вооборжаемый ЭКЗ
# Cumнотнов ЭКЗ 40 \ 8
 
%--2--task
clc;
clear;
%--Graph

set(0, 'DefaultAxesFontSize', 20, 
 'DefaultAxesFontName', 'Arial');

x = 0:pi/100:2*pi;%дипазон
y=tan(sin(x)) - sin(tan(x));
z=tanh(sin(y)) - sin(tanh(y));

subplot(2,2,1);
plot(x,sin(y),z,'--gd','LineWidth',2,'MarkerSize',3,'MarkerEdgeColor','r','MarkerFaceColor',[.10,.11,.12])
legend('1', 'name', '2','Location', 'best')
grid on;

subplot(2,2,2);
plot3(x,exp(y),z,'--so','LineWidth',2,'MarkerSize',3,'MarkerEdgeColor','r','MarkerFaceColor',[0.1,0.4,0.3])
grid on;

subplot(2,2,3);
plot3(x,cos(y),z,'--gd','LineWidth',3,'MarkerSize',3,'MarkerEdgeColor','r','MarkerFaceColor',[0.34,0.76,0.123])
grid on;
set(0, 'DefaultAxesFontSize', 20, 'DefaultAxesFontName', 'Arial');
subplot(2,2,4);
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x,y1,'Color','r',x,y2,'Color','g',':');
title('2-D','FontSize',12);
legend('sin(x)', 'cos(x)');
xlabel('X-Axis','FontSize',12);
ylabel('Y-Axis','FontSize',12);
grid on;
