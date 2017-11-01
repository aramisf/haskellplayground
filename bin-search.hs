import System.Random

-- Get a number sequence
getSeq :: [Int]
getSeq = [x | x <- [1..1000000]]

-- 1st parameter: ordered array
-- 2nd parameter: a random element from the array
-- 3rd lower limit
-- 4th higherr limit
-- 5th attempts count
binSearch :: [Int] -> Int -> Int -> Int -> Int -> Int
binSearch ary num lo_lim hi_lim attempts
          | ary!!middle < num = binSearch ary num middle hi_lim (attempts + 1)
          | ary!!middle > num = binSearch ary num lo_lim middle (attempts + 1)
          | otherwise = attempts -- because the searched number is taken from
                                 -- the array, this clause is guaranteed to be
                                 -- reached at some point
          where middle = div (lo_lim + hi_lim) 2

main :: IO()
main = do
        num <- randomRIO(1, (length getSeq))
        putStrLn ("Chosen number: " ++ (show num))
        putStrLn ("Number of attempts:" ++ (show (binSearch getSeq num 0 (length getSeq) 1)))
