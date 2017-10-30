function [ total, A, posfinal ] = GreedyStepper(k, A, pos)
total = 0;
for n = 1:k
    [value, movecoord] = GreedyBasic(A, pos);
    pos = movecoord;
    total = total + value;
end
posfinal = pos;

%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here


end

