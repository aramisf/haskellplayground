mysum n | (n == 0) = 0
        | (n < 0) = mysum(n+1) + n
        | (n > 0) = mysum(n-1) + n

