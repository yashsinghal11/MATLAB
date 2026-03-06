x=0:0.1:10;
y=sin(x);
z=cos(x);
plot(x,y,'r','LineWidth',2);
hold on;
plot(x,z,'g','LineWidth',2);
title('sinx and cos(x) plot');
xlabel('x');
ylabel('y and z plot');
