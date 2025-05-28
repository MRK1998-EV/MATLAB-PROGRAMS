% Define Grid Data
x = linspace(0, 10, 50); % X-axis values (length in cm)
y = linspace(0, 5, 25);  % Y-axis values (width in cm)
[X, Y] = meshgrid(x, y); % Create grid of X and Y

% Define Temperature Distribution (Example Function)
Z = 50 * exp(-0.1 * (X - 5).^2 - 0.2 * (Y - 2.5).^2); % Peak temperature at the center

% Generate Contour Plot
figure;
contour(X, Y, Z, 20); % Contour plot with 20 levels

% Add Labels and Title
xlabel('Length (cm)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Width (cm)', 'FontSize', 12, 'FontWeight', 'bold');
title('Temperature Distribution Across a Metal Plate', 'FontSize', 14, 'FontWeight', 'bold');

% Add Color Customization
colormap('hot'); % Use "hot" colormap for temperature visualization
colorbar; % Add a color bar to indicate temperature levels

