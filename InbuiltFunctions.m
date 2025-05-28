% MATLAB Program to Use Built-in Functions

% Taking user input
num = input('Enter a number: ');

% Applying built-in functions
squareRoot = sqrt(num);
absoluteValue = abs(num);
roundedValue = round(num);

% Displaying results
fprintf('Square Root of %.2f: %.2f\n', num, squareRoot);
fprintf('Absolute Value of %.2f: %.2f\n', num, absoluteValue);
fprintf('Rounded Value of %.2f: %.2f\n', num, roundedValue);
