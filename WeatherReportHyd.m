% Step 1: Import dataset while ensuring correct headers
data = readtable('Weather Report-Hyderabad-2024.xlsx', 'VariableNamingRule', 'preserve', 'ReadVariableNames', true);

% Step 2: Remove the first row (contains month names) & reset indexing
data(1,:) = []; % Remove row with month names

% Step 3: Convert numeric columns properly
numeric_columns = ["Temperature", "MinimumTemperature", "MaximumTemperature", "Humidity"];

for col = numeric_columns
    data.(col) = str2double(string(data.(col))); % Convert text numbers to numeric format
end

% Step 4: Compute statistics for temperature and humidity
avg_temp = mean(data.Temperature, 'omitnan'); % Average temperature
avg_humidity = mean(data.Humidity, 'omitnan'); % Average humidity

max_temp = max(data.MaximumTemperature, [], 'omitnan'); % Max temperature
min_temp = min(data.MinimumTemperature, [], 'omitnan'); % Min temperature

max_humidity = max(data.Humidity, [], 'omitnan'); % Max humidity
min_humidity = min(data.Humidity, [], 'omitnan'); % Min humidity

% Step 5: Display results
fprintf('Average Temperature of Hyderabad for year 2024: %.2f °C\n', avg_temp);
fprintf('Maximum & Minimum Temperature of Hyderabad for year 2024: %.2f °C & %.2f °C\n', max_temp, min_temp);
fprintf('Average Humidity of Hyderabad for year 2024: %.2f %%\n', avg_humidity);
fprintf('Maximum & Minimum values of Humidity of Hyderabad for year 2024: %.2f %% & %.2f %%\n', max_humidity, min_humidity);

% Step 1: Import dataset
data = readtable('Weather Report-Hyderabad-2024.xlsx', 'VariableNamingRule', 'preserve');

% Step 2: Extract relevant data
months = string(data.Column1); % Month names
temperature = str2double(string(data.Temperature)); % Convert temperature to numeric
humidity = str2double(string(data.Humidity)); % Convert humidity to numeric

% Step 3: Create figure with dual y-axes
figure;
yyaxis left % Left y-axis for temperature
plot(1:12, temperature, '-o', 'LineWidth', 1.5, 'DisplayName', 'Temperature');
ylabel('Temperature (°C)');
ylim([15 40]); % Set suitable temperature range

yyaxis right % Right y-axis for humidity
plot(1:12, humidity, '-s', 'LineWidth', 1.5, 'DisplayName', 'Humidity');
ylabel('Humidity (%)');
ylim([.3 .8]); % Set suitable humidity range

% Step 4: Customize plot appearance
xlabel('Months');
title('Hyderabad Temperature & Humidity Trends (2024)');
xticks(1:12);
xticklabels(months);
legend({'Temperature', 'Humidity'}, 'Location', 'bestoutside');
grid on;

% Step 1: Import dataset
data = readtable('Weather Report-Hyderabad-2024.xlsx', 'VariableNamingRule', 'preserve');

% Step 2: Convert column data to numeric format
data.Temperature = str2double(string(data.Temperature)); % Ensure temperature is numeric
data.Humidity = str2double(string(data.Humidity)); % Ensure humidity is numeric

% Step 3: Extract relevant data
months = categorical(data.Column1); % Convert month names to categorical
avg_temperature = data.Temperature; % Monthly average temperature
avg_humidity = data.Humidity; % Monthly average humidity

% Step 4: Define numeric x-values for correct positioning
x_values = 1:length(months); % Numeric x-axis positions
bar_width = 0.4; % Set bar width

% Step 5: Create bar chart with two distinct bars per month & proper scaling
figure;
yyaxis left % Left y-axis for temperature
bar(x_values - bar_width/2, avg_temperature, bar_width, 'FaceColor', 'b'); % Temperature bars (shifted left)
ylabel('Temperature (°C)');
ylim([15 40]); % Adjust temperature range

yyaxis right % Right y-axis for humidity
bar(x_values + bar_width/2, avg_humidity, bar_width, 'FaceColor', 'r'); % Humidity bars (shifted right)
ylabel('Humidity (%)'); % Correct humidity scale
ylim([0.3 0.8]); % Set humidity range without distortion

% Step 6: Customize the chart
xlabel('Months');
title('Monthly Average Temperature & Humidity in Hyderabad (2024)');
xticks(x_values);
xticklabels(months); % Assign proper month labels
legend({'Temperature (°C)', 'Humidity (%)'}, 'Location', 'bestoutside');
grid on;
