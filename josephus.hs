-- Josephus problema:
-- https://en.wikipedia.org/wiki/Josephus_problem

f :: Int -> Int -> Int
f 1 _ = 1
f n k = (mod ((f (n - 1) k) + (k - 1)) n) + 1

