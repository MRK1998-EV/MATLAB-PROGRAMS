% MATLAB Program: Calculate Determinant of a User-Defined Matrix

% Prompt the user to enter the matrix
disp('Enter the elements of the matrix row by row, separated by spaces:');
disp('For example, for a 2x2 matrix, enter: [1 2; 3 4]');
A = input('Matrix A: ');

% Check if the matrix is square
if size(A, 1) == size(A, 2)
    % Compute the determinant
    detA = det(A);
    disp('The determinant of the matrix is:');
    disp(detA);
else
    disp('Determinant can only be calculated for square matrices.');
end
