factorial n | (n == 0) = 1
            | (n > 0) = factorial(n-1) * n
            | otherwise = 0

