
num_points = 1000;

% Time vector
x = linspace(-2*pi, 2*pi, num_points);

% Continuous function that we want to approximate
y_true = sin(x);

% Number of coefficients
num_coeffs = 20;

% Frequency components of the true solution signal
N = linspace(0, num_coeffs - 1, num_coeffs);

% matrix for the coefficients
c = zeros(num_coeffs);

% Hermite polynomial matrix
H = zeros(num_coeffs, num_points);


for k = 1 : num_coeffs
   n = N(k);
    
    % Coefficient of the integral
    A = 1 / (2^n * factorial(n) * sqrt(pi));
    
    % Hermite function
    H(k, :) = hermiteH(n, x);
    
    % Function to integrate
    f = exp(-x.^2) .* y_true .* H(k, :);
    
    % Integrate the function
    c(k) = A * trapz(x, f);
    
end


% Reconstruct the signal
y_recon = zeros(size(x));

for k = 1 : num_coeffs
   y_recon = y_recon + c(k) *  H(k, :);
    
end

% Make a plot
subplot(2, 1, 1);
plot(x, y_true, '-k');
title('True')

subplot(2, 1, 2);
plot(x, y_recon, '-k');
title('Reconstructed');


% % Plot the magnitudes
% subplot(1, 2, 1);
% plot(t, y, '-k');
% subplot(1, 2, 2);
% plot(c, log(a), '-k', 'linewidth', 3);
% hold on;
% plot(c, log(abs(F)), 'or', 'markerfacecolor', 'red', 'markersize', 5);
% hold off






