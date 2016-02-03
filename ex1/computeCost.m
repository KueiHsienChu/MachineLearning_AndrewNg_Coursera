function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

hypo =  X*theta;
sqr_errors = (hypo - y).^2;
% 1 var >> dimension is (1 x 2)(2 * 2) = 1 x 2    //x1_1=1,x1_2=1

J = (1 / (2*m))*sum(sqr_errors);


% =========================================================================

end
