function y = mkharr(num_points, N)

% Number of points
% Construct the domain
x = linspace(0, 1, num_points);

% Make the list of k coefficients
k = 0 : N - 1;

% Number of coefficients
num_coeffs = length(k)

% Calculate the other harr coefficients for each k
[p, q] = harrcoeffs(k);

% Matrix for holding the wavelets
wavelet_array = zeros(num_coeffs, num_points);

for n = num_coeffs
   
    K = k(n);
    
    if K == 0
        wavelet_array(K, :) = 1 / sqrt(num_coeffs);
    else
        
    end
    
    
end


end