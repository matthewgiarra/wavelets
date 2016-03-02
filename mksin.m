function y = mksin(num_points, f, phi)
% n is the number of points

% Default to no phase shift
if nargin < 3
    phi = 0;
end

% Number of points
% The domain is assumed to go over [0, 2*pi]

% Construct the domain
x = linspace(0, 2 * pi, num_points);

% Make the output signal
y = sin(f * x - phi);


end