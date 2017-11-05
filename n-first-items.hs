-- given an integer N and a list, return the first N elements of that list
myReverse :: [t] -> [t]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]


firstN :: Int -> [t] -> [t]
firstN _ [] = []
firstN 0 l = []
firstN n (x:xs) | (n < 0) = myReverse (firstN (-n) (myReverse (x:xs)))
                | otherwise = x:(firstN (n-1) xs)
--firstN n (x:xs) = x:(firstN (n-1) xs)
