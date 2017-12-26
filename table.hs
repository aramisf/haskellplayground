-- 'Hash' table, using integers as keys

data Table key value = Tab [(key, value)]


newTable :: Table a b
newTable = Tab []

-- search for a key, retuns the existing value associated with it, if it exists
search :: (Ord a) => a -> Table a b -> Maybe b
search _ (Tab []) = Nothing
search key (Tab ((k,v):xs))
        | (key < k) = Nothing
        | (key == k) = Just v
        | (key > k) = search key (Tab xs)


-- If key exists in table, updates its value
-- if key is smaller, than inserts in the beginning
-- if key is greater, than inserts in the end
update :: (Ord a) => (a,b) -> Table a b -> Table a b
update (k,v) (Tab []) = Tab ((k,v):[])
update (key,value) (Tab ((k,v):xs))
      | (key < k) = Tab ((key,value):(k,v):xs)
      | (key == k) = Tab ((k,value):xs)
      | (key > k) = let (Tab t) = (update (key,value) (Tab xs))
                      in Tab ((k,v):t)



remove :: (Ord a) => a -> Table a b -> Table a b
remove _ (Tab []) = Tab []
remove e (Tab ((k,v):xs))
        | (e < k) = Tab ((k,v):xs)
        | (e == k) = Tab xs
        | otherwise = let (Tab t) = remove e (Tab xs) in Tab ((k,v):t)


list = Tab [(1,"aramisf"),(2,"haskellplayground")]



-- Formatting B)
instance (Show a, Show b) => Show (Table a b) where
    show (Tab []) = ""
    show (Tab ((k,v):xs)) = "Key: " ++ (show k) ++ ", Value: " ++ (show v) ++ "\n" ++ (show $ Tab xs)

