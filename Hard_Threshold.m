function Y = Hard_Threshold(x,k)
%k - threshold number
%x - input vector
Y = zeros(height(x),1);

%Create a new vector that contains all unique values in x
x_unique = unique(x);

%Sort x_unique in descending order of absolute values
x_unique_sorted = sort(abs(x_unique),"descend");

%The kth largest values of X will be the first k many of x_unique_sorted
kthlargest = x_unique_sorted(1:k);

%go through all elements in x, and if the absolute value of the compenent does not contain any of
%the kth largest numbers, set the value to zero
for i = 1:height(x)
    if ~ismember(abs(x(i)),kthlargest)
        Y(i) = 0;
    else
        Y(i) = x(i);
    end
end
end