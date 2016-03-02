
num_points = 1000;

% Time vector
t = linspace(0, 1, num_points);

% Number of coefficients
num_coeffs = 5;

exps = linspace(0, num_coeffs-1, num_coeffs);

% Frequency components of the true solution signal
n = 2.^exps;

% Amplitudes
phi = 0;

% Make a function
y = zeros(1, length(t));

% Construct the true signal
for k = 1 : num_coeffs
   y = y + mkharr(num_points, n(k), phi);    
end

% Make a plot
plot(t, y, '-k');
% 
% % Frequency bins
% freq_bins = c;
% 
% % Number of bins
% num_bins = length(freq_bins);
% 
% % Allocate space for the Fourier coefficients
% F = zeros(num_bins, 1);
% 
% % For each frequency bin, make a sin wave and 
% % compute the product of the wave and the function.
% for k = 1 : num_bins
%     
%     % Sine wave
%     sine = mksin(num_points, freq_bins(k), 0);
%     
%     % cosine wave
%     cosine  = mksin(num_points, freq_bins(k), -pi/2);
%     
%     % Integrals
%     sine_sum = trapz(t, y .* sine);
%     cos_sum  = trapz(t, y .* cosine);
%     
%     F(k) = (cos_sum - 1i * sine_sum) / pi;
%     
% end
% 
% % Plot the magnitudes
% subplot(1, 2, 1);
% plot(t, y, '-k');
% subplot(1, 2, 2);
% plot(c, log(a), '-k', 'linewidth', 3);
% hold on;
% plot(c, log(abs(F)), 'or', 'markerfacecolor', 'red', 'markersize', 5);
% hold off
% 
% 




