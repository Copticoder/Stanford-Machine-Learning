function J = computeCost(x, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%theta = theta - ((h(theta)-y))^2
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
    J = (1/(2*m))*sum(((x*theta) - y).^2)

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
