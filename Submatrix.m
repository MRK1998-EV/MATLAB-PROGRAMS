% Define a sample matrix
A = [10 20 30 40; 
     50 60 70 80; 
     90 100 110 120; 
     130 140 150 160];

% Accessing specific elements
element_1 = A(2, 3); % Access the element at row 2, column 3 (70)
element_2 = A(4, 1); % Access the element at row 4, column 1 (130)

% Extracting submatrices
submatrix_1 = A(1:2, 2:4); % Rows 1-2, Columns 2-4
submatrix_2 = A(:, 3); % All rows, Column 3
submatrix_3 = A(2:4, :); % Rows 2-4, All columns

% Display results
disp('Specific elements:');
disp(['Element at (2,3): ', num2str(element_1)]);
disp(['Element at (4,1): ', num2str(element_2)]);

disp('Extracted submatrices:');
disp('Submatrix (Rows 1-2, Columns 2-4):');
disp(submatrix_1);

disp('Column 3 (All Rows):');
disp(submatrix_2);

disp('Rows 2-4 (All Columns):');
disp(submatrix_3);