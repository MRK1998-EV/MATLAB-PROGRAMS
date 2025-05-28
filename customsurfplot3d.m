% Create Grid Data
x = -5:0.5:5; % X-axis values
y = -5:0.5:5; % Y-axis values
[X, Y] = meshgrid(x, y); % Create grid for X and Y

% Define Z as a function of X and Y
Z = sin(sqrt(X.^2 + Y.^2)) .* exp(-0.1 * sqrt(X.^2 + Y.^2)); % Function with damping

% Generate a Surface Plot
figure; % Open a new figure window
surf(X, Y, Z); % Create the surface plot

% Customize Colormap and Color Bar
colormap('turbo'); % Use a vibrant colormap
colorbar; % Add a color scale
clim([-0.5, 1]); % Set color axis limits for better contrast

% Add Labels and Title
xlabel('X-axis (units)', 'FontSize', 12, 'FontWeight', 'bold'); % X-axis label
ylabel('Y-axis (units)', 'FontSize', 12, 'FontWeight', 'bold'); % Y-axis label
zlabel('Z-axis (units)', 'FontSize', 12, 'FontWeight', 'bold'); % Z-axis label
title('Customized 3D Surface Plot', 'FontSize', 14, 'FontWeight', 'bold'); % Plot title

% Enhance Shading and Lighting
shading interp; % Smooth shading for the surface
light; % Add default lighting
lighting gouraud; % Apply Gouraud shading for smooth lighting effects

% Adjust View Angle
view([-45, 30]); % Set view angle for better perspective

% Add Gridlines and Adjust Axes
grid on; % Turn on gridlines
xlim([-6, 6]); % Set X-axis limits
ylim([-6, 6]); % Set Y-axis limits
zlim([-1, 1]); % Set Z-axis limits
