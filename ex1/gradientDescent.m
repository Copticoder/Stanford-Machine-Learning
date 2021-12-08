function [theta, J_history] = gradientDescent(x, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m=y;
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta = theta - (alpha/m)*(x')*(x*theta - y);




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(x, y, theta);
end

end
alpha=0.01;itr=1500;
data=load('ex1data1.txt');
x=data(:,1);y=data(:,2);
theta=zeros(2,1);

[thetaFinal,jHistory]=gradientDescent(x, y, theta, alpha, num_iters);
pred1=[1,3.5]*thetaFinal;
disp(pred1);