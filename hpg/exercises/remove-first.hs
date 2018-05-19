removeFst :: Integer -> [Integer] -> [Integer]
removeFst a [] = []
removeFst a (x:xs)  | (a == x) = xs
                    | otherwise = [x] ++ removeFst a xs
