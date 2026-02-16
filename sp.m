x = 0:0.1:10;
y = sin(x);

subplot(2,1,1)
plot(x,y,'r','LineWidth',2)
title('Sine Wave')
grid on

z = cos(x);

subplot(2,1,2)
plot(x,z,'g','LineWidth',2)
title('Cosine Wave')
grid on
