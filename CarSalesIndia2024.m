% Import dataset
data = readtable('Car Sales India 2024.csv', 'VariableNamingRule', 'preserve');

% Display first few rows
disp('First few rows of the dataset:');
disp(head(data, 5));
% Extract numerical columns (e.g., January to December sales)
sales_data = data{:, 3:14}; % Assuming sales columns are from 3rd to 14th

% Convert non-numeric entries
sales_data = str2double(sales_data); % Convert text to numbers

% Compute statistics
mean_sales = mean(sales_data, 'omitnan');
median_sales = median(sales_data, 'omitnan');
std_sales = std(sales_data, 'omitnan');

disp(['Mean Monthly Sales: ', num2str(mean_sales)]);
disp(['Median Monthly Sales: ', num2str(median_sales)]);
disp(['Standard Deviation of Sales: ', num2str(std_sales)]);

% Filter cars with total sales above 50,000
high_sales = data(data.Total > 50000, :);

disp('Cars with Total Sales above 50,000:');
disp(high_sales(:, {'Company', 'Model', 'Total'})); % Display relevant columns

%Histogram of Total Sales
figure;
histogram(data.Total, 15, 'FaceColor', 'blue');
xlabel('Total Car Sales');
ylabel('Frequency');
title('Distribution of Annual Car Sales');
grid on;

% Step 1: Import dataset
data = readtable('Car Sales India 2024.csv', 'VariableNamingRule', 'preserve');

% Step 2: Define months and ensure numbers are correctly converted
months = ["January", "February", "March", "April", "May", "June", "July", ...
          "August", "September", "October", "November", "December"];

% Convert sales data to numeric, handling comma-separated values
for m = 1:length(months)
    data.(months(m)) = str2double(replace(string(data.(months(m))), ',', '')); % Convert text to numeric
end

% Step 3: Aggregate monthly sales by company
companies = unique(string(data.Company)); % Get unique companies
total_sales_by_company = zeros(length(companies), length(months)); % Initialize matrix

for i = 1:length(companies)
    company_rows = strcmp(string(data.Company), companies(i)); % Match company name
    total_sales_by_company(i, :) = sum(data{company_rows, months}, 'omitnan'); % Sum all models under the company
end

% Step 4: Verify data is populated properly
disp('Total sales matrix populated successfully:');
disp(total_sales_by_company(1:5, :)); % Display first 5 rows to confirm

% Step 5: Time Series Plot for Sales of Each Company
figure;
hold on;

for i = 1:length(companies)
    plot(1:length(months), total_sales_by_company(i, :), '-o', 'LineWidth', 1.5, 'DisplayName', companies(i));
end

% Step 6: Customize the plot
xlabel('Months');
ylabel('Total Sales');
title('Monthly Car Sales Trend by Company');
legend('show', 'Location', 'bestoutside'); % Show all companies
xticks(1:length(months));
xticklabels(months);
grid on;
hold off;