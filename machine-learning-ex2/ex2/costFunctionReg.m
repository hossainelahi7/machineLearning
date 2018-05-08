function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
n = length(theta);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

[JOld, GOld] = costFunction(theta, X, y);
tempLamdaSum = 0;
tempGradient = 0;
for sampleNo = 2:n
	tempLamdaSum = tempLamdaSum + theta(sampleNo, 1) ^ 2;
	GOld(1, sampleNo) = GOld(1, sampleNo) + (lambda / m) * theta(sampleNo, 1);
end

J = JOld + tempLamdaSum * lambda / (2 * m);
grad = GOld;




% =============================================================

end
