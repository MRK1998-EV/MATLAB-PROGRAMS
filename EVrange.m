% Given data points for speed and battery consumption
speed = [1, 3, 5]; % Speeds in m/s
batteryConsumption = [4, 8, 12]; % Battery consumption in arbitrary units

% Target speed for interpolation
targetSpeed = 4; % Speed in m/s

% Perform linear interpolation using the interp1 function
estimatedConsumption = interp1(speed, batteryConsumption, targetSpeed);

% Display the result
fprintf('The estimated battery consumption at a speed of %.2f m/s is %.2f units.\n', targetSpeed, estimatedConsumption);
