% Define the coefficients of the equations
A = [2 1; 3 -2]; % Coefficient matrix
B = [5; 8]; % Constant terms vector

% Solve the system of linear equations
solution = A \ B; % Use the backslash operator to solve

% Extract motor power (x) and battery capacity (y)
x = solution(1); % Motor power
y = solution(2); % Battery capacity

% Display the results
fprintf('Optimal motor power (x): %.2f\n', x);
fprintf('Optimal battery capacity (y): %.2f\n', y);

