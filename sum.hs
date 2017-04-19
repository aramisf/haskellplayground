mysum 1 = 1
mysum n | (n > 1) = mysum(n-1) + n
        | otherwise = 0

