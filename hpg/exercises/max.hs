max' :: Integer -> Integer -> Integer
max' a b  | a >= b = a
          | otherwise = b

greater :: [Integer] -> Integer
greater [] = error "empty list given"
greater [x] = x
greater (x:xs) = max' x (greater xs)
