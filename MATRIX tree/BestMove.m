function [ movecoord ] = BestMove(A, moves)
%We are passed our current matrix as well as the valid moves
%We look to see which one gives us the most value.
best = A(moves(1,1), moves(2,1));
movecoord = [moves(1, 1), moves(2, 1)];
k = size(moves, 2);

for n = 1:k
    if A(moves(1,n), moves(2, n)) >= best
        best = A(moves(1,n), moves(2, n));
        movecoord = [moves(1,n); moves(2, n)];
    end
end


end

