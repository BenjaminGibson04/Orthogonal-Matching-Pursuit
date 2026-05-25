function j = Support(H)
%Calculates the support of a vector H. returns the set of indices that
%correspond to non-zero elements in H.
n = 1;
j = []; %we must initialize j as an empty set
for i = 1:height(H)
    if H(i) ~= 0
        j(n) = i;
        n = n +1;
    end
end
end