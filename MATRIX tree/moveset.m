function [ moves ] = moveset(M, pos)
%Generates a 2xm matrix of the m possible moves
%1,m is x coord
%2,m is y coord
k = size(M, 1);
moves = [];
%Gets size of the nxn matrix
%Creates the moveset array

%changing x coord
for x = 1:k
    if x ~= pos(1,1)
        move = [x; pos(2,1)];
        moves = [moves, move];
    end
end
%changing y coord
for y = 1:k
    if y ~= pos(2,1)
        move = [pos(1,1); y];
        moves = [moves, move];
    end
end

%increasing x increasing y
for x = 1:k-pos(1,1)
    if pos(2,1) + x < 9
        move = [pos(1,1) + x; pos(2,1) + x];
        moves = [moves, move];
    end
end
%decreasing x decreasing y
for x = 1:pos(1,1)-1
    if pos(2,1) - x > 0
        move = [pos(1,1)-x; pos(2,1)-x];
        moves = [moves, move];
    end
end
%increasing x decreasing y
for x = 1:k-pos(1,1)
    if pos(2,1) - x > 0
        move = [pos(1,1) + x; pos(2,1) - x];
        moves = [moves, move];
    end
end
%decreasing x increasing y
for x = 1:pos(1,1)-1
    if pos(2,1) + x < 9
        move = [pos(1,1) - x; pos(2,1) + x];
        moves = [moves, move];
    end
end

end

