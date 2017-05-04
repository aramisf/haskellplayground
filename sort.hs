import Data.List

type Name = String
type Language = String
data Person = Programmer Name Language deriving (Eq, Ord, Show)

p1 = Programmer "aramis" "perl"
p2 = Programmer "alline" "java"
p3 = Programmer "furmiga" "c"

l = [p1, p2, p3]

start  = sort l
