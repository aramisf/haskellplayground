import Data.List

people = [("me", 50), ("you", 45), ("her", 30), ("them", 40)]

customFn :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
customFn (a1, b1) (a2, b2)
          | b1 > b2 = GT -- greater than -> will sort from lesser to greater values
          | b1 == b2 = EQ -- equal
          | otherwise = LT -- less than

mySort list = sortBy customFn list

