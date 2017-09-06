zero :: (Ord t, Fractional t) => t -> t
zero n  | (n > 0) = zero n/2
        | otherwise = n
