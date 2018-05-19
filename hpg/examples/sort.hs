-- Sort a list of integers in ascending order
--
-- calculates the minimum of 2 integers
min' :: Int -> Int -> Int
min' a b  | a <= b = a
          | otherwise = b

-- Returns the minumum integer of a given list
minInt :: [Int] -> Int
minInt [] = error "empty list"
minInt [x] = x
minInt (x:xs) = min' x (minInt xs)


-- Removes the first occurrence of a given integer of a list, returning a list
-- without that integer
removeFst :: Int -> [Int] -> [Int]
removeFst a [] = []
removeFst a (x:xs)  | (a == x) = xs
                    | otherwise = [x] ++ removeFst a xs


-- Sorts a given list in ascending order, given the auxiliary functions defined
-- above
sort :: [Int] -> [Int]
sort [] = []
-- : -> concatenates a string, `where` defines an auxiliary function locally
sort xs = m : (sort (removeFst m xs)) where m = minInt xs
