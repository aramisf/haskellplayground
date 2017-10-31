import Data.Map as Map
dict =
  [
    ("C", "Dennis Ritchie"),
    ("Perl", "Larry Wall"),
    ("Rust", "Graydon Hoare"),
    ("Haskell", "Haskell Curry")
  ]

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs) =  if key == k
                            then Just v
                            else findKey key xs

-- Turn the dictionary into a map, allowing for usual map operations to be run
-- on the data structure
map = Map.fromList dict
