-- Quicksort
qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs)  = qsort left ++ [x] ++ qsort right
              where
                left  = [ y | y <- xs, y < x ]
                right = [ y | y <- xs, y >= x ]
