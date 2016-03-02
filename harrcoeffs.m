function [p, q] = harrcoeffs(k)

% p coefficient
p = max(0, floor(log2(k)));

% q coefficient
q = k - 2.^p + 1;

end