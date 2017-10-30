function [ M ] = NonSquareLeap( M )
%If the sum of the current edge movement had a non-square
%sum we reduce the value of each square by 5.
M = M - 5;
end

