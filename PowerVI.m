disp('Welcome to the Vehicle Power Calculator');
try
    % Step 1: Get user input
    vehicleName = input('Enter the name of the vehicle: ', 's');
    batteryVoltage = input('Enter the battery voltage (V): ');
    currentDrawn = input('Enter the current drawn from the battery (A): ');

    % Step 2: Input Validation
    if batteryVoltage <= 0 || currentDrawn <= 0
        error('Voltage and Current must be positive values.');
    end

    % Step 3: Power Calculation
    powerDelivered = batteryVoltage * currentDrawn;

    % Step 4: Display Output
    fprintf('\nResults:\n');
    fprintf('Vehicle Name: %s\n', vehicleName);
    fprintf('Battery Voltage: %.2f V\n', batteryVoltage);
    fprintf('Current Drawn: %.2f A\n', currentDrawn);
    fprintf('Power Delivered to the Motor: %.2f W\n', powerDelivered);

catch ME
    % Step 5: Error Handling
    disp(['Error: ', ME.message]);
end
% Step 6: User Experience
disp('Thank you for using the Vehicle Power Calculator!');

