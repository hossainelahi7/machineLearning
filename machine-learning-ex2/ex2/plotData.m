function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
m = length(y);
for itemNo = 1:m
	if (y(itemNo) == 1)
		plot(X(itemNo, 1), X(itemNo, 2), "+");
	else
		plot(X(itemNo, 1), X(itemNo, 2), "o");
	end
end







% =========================================================================



hold off;

end
