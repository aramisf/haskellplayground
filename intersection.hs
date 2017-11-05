-- given two lists, return their intersection

myContains :: (Eq t) => t -> [t] -> Bool
myContains _ [] = False
myContains e (x:xs) | (e == x) = True
                    | otherwise = myContains e xs

myIntersect :: (Eq t) => [t] -> [t] -> [t]
myIntersect [] _ = []
myIntersect (x:xs) l  | myContains x l = x:(myIntersect xs l)
                      | otherwise = myIntersect xs l
