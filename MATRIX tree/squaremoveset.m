function [ movess ] = squaremoveset(pos, moves, A)
%Evaluates the moveset to find ones with square values. If it does, we pick
%one at random. Otherwise we go at full random.
k = size(moves, 2);
movess = [];
square = squares();
for i = 1:k
    sum = A(pos(1,1),pos(2,1))+ A(moves(1,i),moves(2,i));
    if ismember(sum, square)
        movess = [movess, [moves(1,i);moves(2,i)]];
    end
end
if size(movess,2) < 1
    movess = moves;
end

end

