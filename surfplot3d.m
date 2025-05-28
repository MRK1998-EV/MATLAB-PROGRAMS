% Create grid data
x = -5:0.5:5; % X-axis values
y = -5:0.5:5; % Y-axis values
[X, Y] = meshgrid(x, y); % Create grid for X and Y

% Define Z as a function of X and Y
Z = sin(sqrt(X.^2 + Y.^2));

% Generate a surface plot
surf(X, Y, Z);

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Surface Plot');

% Add a color bar for visualization
colorbar;