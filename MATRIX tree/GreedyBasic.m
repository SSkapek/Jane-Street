function [ value, movecord ] = GreedyBasic(A, pos)
%A most greedy algorithm. At each move, we simply move to the next best
%spot. This is not the worst solution.
A;
%Creates Our Matrix, the current location, and the total sum.
moves = moveset(A, pos);
%Generate Possible Moves
movecord = BestMove(A, moves);
%Finds the single largest value
value = A(movecord(1,1), movecord(2,1));
%Returns the value of the move





end

