-- Diffs two strings
-- example: diff "php" "python"
-- -> php

diff :: String -> String -> String
diff s1 s2 = [ if elem x s2 then x else '-' | x <- s1 ]


-- Diff2 considers the character position into account
diff2 :: String -> String -> String
diff2 [] _ = []
diff2 _ [] = []
diff2 (x:xs) (y:ys) | (x == y) = x:(diff2 xs ys)
                    | otherwise = '-':(diff2 xs ys)

