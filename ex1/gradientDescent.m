function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

%t = zeros(size(theta,1), 1);

for it = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %for i = 1:size(theta,1),
	%    t(i,1) = theta(i,1) - alpha*(1 / m)*((computeCost(X, y, theta))*sum(X(i,:)));
%    end
    	    
 %   theta = t;
 
	theta = theta - ((1/m) * ((X * theta) - y)' * X)' * alpha;
    % ============================================================

    % Save the cost J in every iteration    
	J_history(it) = computeCost(X, y, theta);	
   
end	

disp(J_history)

end
