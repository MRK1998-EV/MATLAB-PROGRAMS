% MATLAB Program for Basic Matrix Operations

% Taking user input for matrix dimensions
rows = input('Enter the number of rows: ');
cols = input('Enter the number of columns: ');

% Creating matrices based on user input
disp('Enter elements for Matrix A:');
matrixA = zeros(rows, cols); % Initialize matrix A
for i = 1:rows
    for j = 1:cols
        matrixA(i,j) = input(sprintf('A(%d,%d): ', i, j));
    end
end

disp('Enter elements for Matrix B:');
matrixB = zeros(rows, cols); % Initialize matrix B
for i = 1:rows
    for j = 1:cols
        matrixB(i,j) = input(sprintf('B(%d,%d): ', i, j));
    end
end

% Performing operations
transposedA = matrixA';
transposedB = matrixB';
addedMatrix = matrixA + matrixB;
scalarValue = input('Enter scalar value for multiplication: ');
scaledMatrixA = scalarValue * matrixA;
scaledMatrixB = scalarValue * matrixB;

% Displaying results
disp('Transposed Matrix A:');
disp(transposedA);
disp('Transposed Matrix B:');
disp(transposedB);
disp('Matrix Addition (A + B):');
disp(addedMatrix);
disp('Matrix A after Scalar Multiplication:');
disp(scaledMatrixA);
disp('Matrix B after Scalar Multiplication:');
disp(scaledMatrixB);
