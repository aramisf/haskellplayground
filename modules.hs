module Funcs (isEven, isOdd) where

isEven :: Int -> Bool
isEven n  | (mod n 2 == 0) = True
          | otherwise = False

isOdd :: Int -> Bool
isOdd n = not (isEven n)

hidden :: Int -> Int
hidden n = n+1
