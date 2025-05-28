% Define the function f(x) = x^2
f = @(x) x.^2;

% Define the interval [0, 2] and the number of subintervals
a = 0; % Lower limit
b = 2; % Upper limit
n = 4; % Number of intervals

% Calculate the width of each interval (step size)
h = (b - a) / n;

% Calculate the x-values at the interval points
x = a:h:b;

% Evaluate the function at these x-values
y = f(x);

% Apply the trapezoidal rule
integralApproximation = h * (sum(y) - (y(1) + y(end)) / 2);

% Display the result
fprintf('The approximate integral of f(x) = x^2 over [0, 2] using the trapezoidal rule is: %.4f\n', integralApproximation);
