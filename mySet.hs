module MySet (MySet, add, new, exists, isEmpty, remove) where

data MySet t = S [t]
              deriving (Show, Ord, Eq)

new :: MySet t
new = S []

exists :: Eq t => MySet t -> t -> Bool
exists (S []) _ = False
exists (S (x:xs)) e
                    | (x == e) = True
                    | otherwise = exists (S xs) e

add :: Eq t => MySet t -> t -> MySet t
add (S list) e
              | (not (exists (S list) e)) = S (e:list)
              | otherwise = S list

isEmpty :: Eq t => MySet t -> Bool
isEmpty (S list)
              | (list == []) = True
              | otherwise = False

remove :: Eq t => MySet t -> t -> MySet t
remove (S []) _ = S []
remove (S (x:xs)) e
                  | (not (exists (S (x:xs)) e)) = S (x:xs)
                  | (x == e) = S xs
                  | otherwise = remove (S (xs ++ [x])) e

example = S [1,2,3,4,5]
void = S []
