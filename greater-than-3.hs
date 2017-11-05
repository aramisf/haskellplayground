-- given an integer N and a list, return a sublist of integers on that list that
-- are greater than N and multiples of 3

greater :: Int -> [Int] -> [Int]
greater _ [] = []
greater n (x:xs)  | (n < x) && (mod x 3 == 0) = (x : (greater n xs))
                  | otherwise = greater n xs

