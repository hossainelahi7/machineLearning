function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%printf("%s\n",J_history );
%printf("%s\n",theta );
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    j = zeros(2, 1);


    h = X(:, 1:2) * theta;
    j(1, 1) = sum((h - y) .* X(:, 1))/ m;
    j(2, 1) = sum((h - y) .* X(:, 2))/ m;

    theta (1, 1) = theta (1 , 1) - (alpha * j(1, 1) );   
    theta (2, 1) = theta (2 , 1) - (alpha * j(2, 1) );


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
