function [X,R] = OMP(A,b)
% A - m x n matrix, n > m
% b = m x 1
X = zeros(3,1);
r = zeros(height(b),1);
r = b;
S = [];

%keep track of all residual errors 
R = zeros(height(r),1000);
R(:,1) = r;
for k = 2:100
    g = A'*r;

    %calculate the hard threshold of 1 of the vector g. *See code for
    %self-built hard threshold function
    H1_g = Hard_Threshold(g,1);
  
    %calculate the support of H1(g)
    j = Support(H1_g);
    
    S = union(S,j);

    X(S) = pinv(A(:,S))*b;

    for i = 1:height(X)
        if ~ismember(i,S)
            X(i) = 0;
        end
    end
    %X
    r = b - A*X;
    R(:,k) = r;
    %X
end

end