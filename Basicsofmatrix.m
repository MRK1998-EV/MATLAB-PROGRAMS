% MATLAB Program: Arithmetic Operations on Two Matrices

% Define two matrices
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];

% Ensure the matrices are of the same size for addition/subtraction
if size(A) == size(B)
    % Addition
    Addition = A + B;
    disp('Matrix Addition:');
    disp(Addition);

    % Subtraction
    Subtraction = A - B;
    disp('Matrix Subtraction:');
    disp(Subtraction);
else
    disp('Addition and subtraction require matrices of the same size.');
end

% Ensure the matrices meet the multiplication condition
if size(A, 2) == size(B, 1)
    % Matrix Multiplication
    Multiplication = A * B;
    disp('Matrix Multiplication:');
    disp(Multiplication);
else
    disp('Multiplication requires the number of columns in A to match the number of rows in B.');
end

% Element-wise division (ensure no element of B is zero)
if all(B(:) ~= 0)
    % Element-wise Division
    Division = A ./ B;
    disp('Element-wise Division:');
    disp(Division);
else
    disp('Division requires all elements of the second matrix to be nonzero.');
end
