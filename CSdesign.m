% Given data
ladderLength = 12; % Length of the charging plug in meters
angleDegrees = 60; % Angle with the ground in degrees

% Convert angle from degrees to radians
angleRadians = deg2rad(angleDegrees);

% Calculate height using the formula: Height = Ladder Length * sin(Angle)
height = ladderLength * sin(angleRadians);

% Display the result
fprintf('The height at which the charging plug reaches the wall is: %.2f meters\n', height);
