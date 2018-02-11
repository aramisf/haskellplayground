-- The goal here is to implement the mapping function using folds
--
-- A bit about folding
-- foldr (\x acc -> x + acc^2) 1 [1..4]
-- 617797
-- foldl (\acc x -> x + acc^2) 1 [1..4]
-- 1525

mapr :: (a -> b) -> [a] -> [b]
mapr f xs = foldr (\x acc -> f x : acc) [] xs

mapl :: (a -> b) -> [a] -> [b]
mapl f xs = foldl (\acc x -> acc ++ [f x]) [] xs

-- loop
-- > take 10 left
left = mapl (*10) [1..]

-- works!
-- > take 10 right
right = mapr (*10) [1..]

