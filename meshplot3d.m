% Define the grid
x = -5:0.5:5; % X-axis values
y = -5:0.5:5; % Y-axis values
[X, Y] = meshgrid(x, y); % Create grid data

% Define Z as a function of X and Y
Z = X.^2 + Y.^2;

% Create a 3D mesh plot
mesh(X, Y, Z);

% Add labels and title
