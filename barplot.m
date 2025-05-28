% Data: Car Models and Their Fuel Efficiency
car_models = {'Sedan', 'SUV', 'Hatchback', 'Truck', 'Electric'}; % Car categories
fuel_efficiency = [25, 18, 30, 15,90]; % Fuel efficiency (in miles per gallon for ICE or mpge for EVs)

% Generate Bar Graph
figure; % Open a new figure window
bar(fuel_efficiency, 'FaceColor', 'blue'); % Create bar graph

% Customize Labels and Title
xticks(1:length(car_models)); % Set tick positions
xticklabels(car_models); % Set category labels
xlabel('Car Models', 'FontSize', 12, 'FontWeight', 'bold'); % X-axis label
ylabel('Fuel Efficiency (mpg or mpge)', 'FontSize', 12, 'FontWeight', 'bold'); % Y-axis label
title('Fuel Efficiency Comparison Across Car Models', 'FontSize', 14, 'FontWeight', 'bold'); % Title

% Add Gridlines for Better Visualization
grid on;

% Add Values on Bars (Optional)
for i = 1:length(fuel_efficiency)
    text(i, fuel_efficiency(i) + 2, num2str(fuel_efficiency(i)), 'HorizontalAlignment', 'center', 'FontSize', 10);
end

