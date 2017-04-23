-- Prints a list's size
size [] = 0
size (a:b) = 1 + size b

------------------------------------------------------------------------------
{- Finding if two given lists are equal. Being equal means:
 - Having the same size;
 - Having the same elements;
 - The elements must be in the same order.
 -}

same :: [Int] -> [Int] -> Bool
same [] [] = True
same _ [] = False
same [] _ = False
same (a:b) (c:d)  | (a == c) = same b d
                  | otherwise = False
------------------------------------------------------------------------------


my_reverse :: [t] -> [t]
my_reverse [] = []
my_reverse (x:xs) = my_reverse xs ++ [x] -- `++` -> list concatenator


belongs_to :: [Int] -> Int -> Bool
belongs_to [] _ = False
belongs_to (x:xs) e | (x == e) = True
                    | otherwise = belongs_to xs e


-- Returns the biggest integer inside a list
myx :: [Int] -> Int
myx [x] = x
myx (x:xs)  | (x > myx xs) = x
            | otherwise = myx xs


-- Say if all elements inside a list are even
evens :: [Int] -> Bool
evens [] = True
evens (x:xs)  | (mod x 2 == 1) = False
              | otherwise = evens xs

-- Say if all elements inside a list are odd
odds :: [Int] -> Bool
odds [] = True
odds (x:xs) | (mod x 2 == 0) = False
            | otherwise = odds xs


------------------------------------------------------------------------------
-- List Comprehension
------------------------------------------------------------------------------
multiples_of_3 = [x | x <- [1..30], even x, x > 5, x < 30, mod x 3 == 0]
list_of_tuples = [ (x,y) | x <- [1..2], y <- [1..4]]


------------------------------------------------------------------------------
-- Simple Sorting:
------------------------------------------------------------------------------

-- 1st step, function that returns the minimum integer from a list of integers
minimeu :: [Int] -> Int
minimeu [x] = x
minimeu (x:xs)  | (x < (minimeu xs)) = x
                | otherwise = minimeu xs

-- Auxiliary function:
--  it removes the minimum integer from a list. This will be useful when sorting
--  a list
remove_minimum :: [Int] -> [Int]
remove_minimum [] = []
remove_minimum (x:xs) | (x == (minimeu (x:xs))) = xs
                      | otherwise = (x : remove_minimum xs)

aux_sort :: [Int] -> [Int] -> [Int]
aux_sort sorted [] = sorted
aux_sort sorted unordered = aux_sort (sorted ++ [ minimeu unordered ]) (remove_minimum unordered)

-- The final function
my_sort :: [Int] -> [Int]
my_sort l = aux_sort [] l
------------------------------------------------------------------------------
-- /Sorting:
------------------------------------------------------------------------------
