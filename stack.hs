push :: [Int] -> Int -> [Int]
push stack x = stack ++ [x]

pop :: [Int] -> [Int]
pop [] = error "Empty stack"
pop (x:xs) | (x == top (x:xs)) = xs
           | otherwise = x : pop xs


-- Aux funcs
top :: [Int] -> Int
top [x] = x
top (x:xs) = top xs

is_empty :: [Int] -> Bool
is_empty l  | (l == []) = True
            | otherwise = False
