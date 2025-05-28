% MATLAB Program: Compute the Inverse of a User-Defined Matrix

% Prompt the user to enter the matrix
disp('Enter the elements of the matrix row by row, separated by spaces:');
disp('For example, for a 2x2 matrix enter: [1 2; 3 4]');
A = input('Matrix A: ');

% Check if the matrix is square
if size(A, 1) == size(A, 2)
    % Compute the determinant
    detA = det(A);
    
    if detA ~= 0
        % Compute the inverse
        InverseA = inv(A);
        disp('The inverse of the matrix is:');
        disp(InverseA);
    else
        disp('The matrix does not have an inverse because its determinant is zero.');
    end
else
    disp('The inverse can only be computed for square matrices.');
end
