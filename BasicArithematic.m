% MATLAB Program to Perform Basic Arithmetic Operations

% Taking user input
num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');

% Performing operations
addition = num1 + num2;
subtraction = num1 - num2;
multiplication = num1 * num2;

% Handling division separately to avoid division by zero
if num2 ~= 0
    division = num1 / num2;
else
    division = 'Undefined (division by zero)';
end
% Displaying results
fprintf('Addition: %.2f\n', addition);
fprintf('Subtraction: %.2f\n', subtraction);
fprintf('Multiplication: %.2f\n', multiplication);

% Properly handling division output
if num2 ~= 0
    fprintf('Division: %.2f\n', division);
else
    fprintf('Division: Undefined (division by zero)\n');
end
