type Name = String
type Age = Int
type Language = String
type Person = (Name, Age, Language) -- be aware, this is an alias for a tuple

data Compass = North | East | South | West
    deriving (Eq, Show, Enum, Ord) -- now you can print, compare and do more stuff with this data

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

person :: Person

person = ("Joe", 50, "Haskell")

myFst :: Person -> Name
myFst (n, _, _) = n
