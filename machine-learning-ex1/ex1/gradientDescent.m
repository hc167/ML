function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

	J_history(iter) = computeCost(X, y, theta);

	m = length(y);
	prediction = X*theta - y;
	prediction = X .* prediction;

	t0 = theta(1) - (sum(prediction(:,1))*alpha)/m;
	t1 = theta(2) - (sum(prediction(:,2))*alpha)/m;

	if iter ~= 1
		if J_history(iter) > J_history(iter-1) 
			return
		end;
	end;

	theta = [t0; t1];


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
