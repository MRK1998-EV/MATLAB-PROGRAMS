% Prompt user for the number of EVs in the fleet
numEVs = input('Enter the number of EVs in the fleet: ');

% Define the number of battery cells required per EV
lithiumIonCells = 2;
nickelMetalHydrideCells = 2;
leadAcidCells = 2;

% Calculate total cells per EV
totalCellsPerEV = lithiumIonCells + nickelMetalHydrideCells + leadAcidCells;

% Calculate total cells for the fleet
totalCells = numEVs * totalCellsPerEV;

% Display the result
fprintf('Total number of battery cells needed for the fleet: %d\n', totalCells);
