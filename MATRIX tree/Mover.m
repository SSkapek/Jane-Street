function [ sum, A, pos ] = Mover(sum, A, pos)
%We are going to run Greedystepper, updating A each time
%This will show us the Least possible answer
[square] = squares();
%Initializes the array of squares
[value, A, posfinal] = GreedyStepper(1, A, pos);
first = A(pos(1,1), pos(2,1));
second = A(posfinal(1,1), posfinal(2,1));
%Passes back the greedy leap value, the matrix A, and position after the
%leap.

sum = sum + value;
%Adds to our summ

tots = first + second;
if ismember(tots, square)
    A = SquareLeap(A);
else
    A = NonSquareLeap(A);
end
%Modifies matrix A according to the rules.

pos = posfinal;
%gives us the new position of the player


end

