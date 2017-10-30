function [ sum, steps ] = randompath( k )
%This will generate a k step path through the path and then
%either a 1 or 2 step walk to (8,8).
[A] = InitializeMatrix();
[pos] = Position();
[square] = squares();
movement = [];
sum = 0;
for i = 1:k
    [moves] = moveset(A, pos);
    [moves] = squaremoveset(pos, moves, A);
    r = size(moves, 2);
    b = randi(r);
    move = [moves(1, b); moves(2,b)];
    movement = [movement, move];
    first = A(pos(1,1), pos(2,1));
    second = A(move(1,1), move(2,1));
    sum = sum + second;
    tots = first + second;
    if ismember(tots, square)
        A = SquareLeap(A);
        else
        A = NonSquareLeap(A);
    end
    pos = move;
end
steps = movement;
end

