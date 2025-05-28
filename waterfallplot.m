% Create Grid Data
x = linspace(0, 2*pi, 50); % X-axis values
y = 1:10; % Y-axis values (10 layers)
[X, Y] = meshgrid(x, y); % Create grid

% Define Z as a function of X and Y
Z = sin(X) + Y / 5; % Example function

% Generate Waterfall Plot
figure; % Open a new figure window
waterfall(X, Y, Z); % Create the waterfall plot

% Customize Labels and Title
xlabel('X-axis'); % Label for x-axis
ylabel('Y-axis (Layers)'); % Label for y-axis
zlabel('Z-axis (Values)'); % Label for z-axis
title('Waterfall Plot Example'); % Title of the graph
