function [ MAP ] = InitializeMatrix(  )
%This will create the initial matrix of the problem
MAP = [1, 21, 27, 12 0, 10, 17, 8; 6, 20, 31, 17, 31, 15, 22, 5; 
    9, 28, 8, 24, 1, 18, 30, 13; 19, 4, 11, 26, 11, 28, 3, 23;
    29, 9, 19, 3, 22, 2, 13, 29; 10, 26, 4, 24, 7, 18, 25, 15;
    16, 7, 12, 25, 16, 27, 2, 23; 0, 14, 21, 5, 20, 6, 14, 30];

end

