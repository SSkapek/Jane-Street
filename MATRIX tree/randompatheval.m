function [ best, bestwalk ] = randompatheval( k )
%Going to do a whole bunch of randompath walks of lenght 6. Figure out which one is the
%best. Also need to do a focus on squares walk.
best = 0;
bestwalk = [];
for i = 1:k
    [sum, path] = randompath(20);
    if sum > best
        best = sum;
        bestwalk = path;
    end
    
end

end

