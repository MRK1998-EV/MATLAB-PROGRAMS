% Define the matrices A and B
A = [1 2; 3 4];
B = [5 6; 7 8];

% Calculate the determinant of A
detA = det(A);

% Calculate the inverse of B
invB = inv(B);

% Calculate the product of det(A) and inv(B)
result = detA * invB;

% Display the results
fprintf('Determinant of A: %.2f\n', detA);
disp('Inverse of B:');
disp(invB);
disp('Product of det(A) and inv(B):');
disp(result);