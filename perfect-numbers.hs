-- Verifies if a number is a perfect number, i.e. it equals to the sum of all of
-- its dividers, except for itself.

dividers :: Int -> [Int]
dividers n = [ x | x <- [ 1 .. n-1 ], mod n x == 0 ]


isPerfect :: Int -> Bool
isPerfect n | (sum (dividers n) == n) = True
            | otherwise = False

perfectsUpTo :: Int -> [Int]
perfectsUpTo n = [ x | x <- [1 .. n], isPerfect x ]


