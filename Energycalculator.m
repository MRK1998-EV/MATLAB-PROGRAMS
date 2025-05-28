disp('Welcome to the Journey Energy Calculator, Alice!');
try
    % Step 1: Prompt user inputs
    powerRequirement = input('Enter the journey''s power requirement (in kW): ');
    journeyDuration = input('Enter the duration of the journey (in hours): ');

    % Step 2: Validate non-negative inputs
    if powerRequirement < 0 || journeyDuration < 0
        error('Both power requirement and journey duration must be non-negative values.');
    end

    % Step 3: Calculate energy requirement
    energyRequirement = powerRequirement * journeyDuration;

    % Step 4: Display the result
    fprintf('\nResults:\n');
    fprintf('Power Requirement: %.2f kW\n', powerRequirement);
    fprintf('Journey Duration: %.2f hours\n', journeyDuration);
    fprintf('Energy Requirement: %.2f kWh\n', energyRequirement);

catch ME
    % Step 5: Handle errors for invalid inputs
    disp(['Error: ', ME.message]);
end

