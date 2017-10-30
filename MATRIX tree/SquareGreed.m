function [ A, B, score, pos, movesum] = SquareGreed(A, pos, B, score)
%Greedystep for each step always being Greedy and square.

moves = moveset(A, pos);
moves = squaremoveset(pos, moves, A);
current = A(pos(1,1), pos(2,1));
%We got the list of square moves
k = size(moves, 2);
best = -100;
move = [];
for n = 1:k
    if A(moves(1, n), moves(2, n)) >= best
        best = A(moves(1, n), moves(2, n));
        move = [moves(1,n); moves(2,n)];
    end
end
%Finds the best of the square moves
pos = move;
%updates position
B = [B, pos];
%updates moveset
score = score + A(pos(1,1), pos(2,1));
movesum = A(pos(1,1), pos(2,1)) + current;
A = SquareLeap(A);
%updates A
%updates score


end

