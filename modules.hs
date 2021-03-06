module Funcs (isEven, isOdd) where

isEven :: Int -> Bool
isEven n  | (mod n 2 == 0) = True
          | otherwise = False

isOdd :: Int -> Bool
isOdd n = not (isEven n)

-- because this function name is not declare on top of this file, it cannot be
-- seen by files that import it
hidden :: Int -> Int
hidden n = n+1
