x=-pi:0.1:pi;
y=sin(x);
z=x.*sin(x);
plot3(x,y,z)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('simple 3D plot')